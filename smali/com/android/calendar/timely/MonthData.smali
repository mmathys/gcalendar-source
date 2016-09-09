.class public Lcom/android/calendar/timely/MonthData;
.super Ljava/lang/Object;
.source "MonthData.java"

# interfaces
.implements Lcom/android/calendar/timely/RangedData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/MonthData$MonthEventResults;,
        Lcom/android/calendar/timely/MonthData$TaskResults;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static static_tag:I


# instance fields
.field private mAllTasksReady:Z

.field private final mCurrentMonth:Z

.field private mDateInfo:[I

.field private mDaysToItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/TimelineItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mEventToken:I

.field private mEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/TimelineItem;",
            ">;"
        }
    .end annotation
.end field

.field private mEventsReady:Z

.field private final mListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/calendar/timely/DataFactory$OnUpdateListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNumDays:I

.field private mOnEventsAndTasksReadyListener:Lcom/android/calendar/timely/DataFactory$OnEventsAndTasksReadyListener;

.field private mStartDay:I

.field private mTag:I

.field private mTasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/calendar/timely/MonthData$TaskResults;",
            ">;"
        }
    .end annotation
.end field

.field private mTasksReady:Z

.field private mTimeRecycle:Lcom/android/calendar/time/Time;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/android/calendar/timely/MonthData;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/MonthData;->TAG:Ljava/lang/String;

    .line 99
    const/4 v0, 0x0

    sput v0, Lcom/android/calendar/timely/MonthData;->static_tag:I

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    new-instance v0, Lcom/android/calendar/time/Time;

    invoke-direct {v0}, Lcom/android/calendar/time/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/MonthData;->mTimeRecycle:Lcom/android/calendar/time/Time;

    .line 150
    sget v0, Lcom/android/calendar/timely/MonthData;->static_tag:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/calendar/timely/MonthData;->static_tag:I

    iput v0, p0, Lcom/android/calendar/timely/MonthData;->mTag:I

    .line 152
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/calendar/timely/MonthData;->mDateInfo:[I

    .line 153
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/MonthData;->mDaysToItems:Landroid/util/SparseArray;

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/MonthData;->mListeners:Ljava/util/Map;

    .line 158
    iput-boolean p1, p0, Lcom/android/calendar/timely/MonthData;->mCurrentMonth:Z

    .line 159
    return-void
.end method

.method private checkDataReady()V
    .locals 1

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/android/calendar/timely/MonthData;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    invoke-direct {p0}, Lcom/android/calendar/timely/MonthData;->mergeEventsAndTasks()V

    .line 234
    invoke-direct {p0}, Lcom/android/calendar/timely/MonthData;->notifyListeners()V

    .line 236
    :cond_0
    return-void
.end method

.method private getDayInMonth(I)I
    .locals 1

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/android/calendar/timely/MonthData;->getStartDay()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method private getDayOfMonth(I)I
    .locals 1

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/android/calendar/timely/MonthData;->getStartDay()I

    move-result v0

    sub-int v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private mergeEventsAndTasks()V
    .locals 6

    .prologue
    .line 398
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 401
    iget-object v0, p0, Lcom/android/calendar/timely/MonthData;->mTasks:Ljava/util/Map;

    if-eqz v0, :cond_6

    .line 402
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 403
    iget-object v0, p0, Lcom/android/calendar/timely/MonthData;->mTasks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/MonthData$TaskResults;

    .line 404
    if-eqz v0, :cond_0

    .line 405
    iget-object v0, v0, Lcom/android/calendar/timely/MonthData$TaskResults;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 409
    :cond_1
    sget-object v0, Lcom/android/calendar/task/TimelineTaskType;->DATE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object v0, v1

    .line 415
    :goto_1
    iget-object v1, p0, Lcom/android/calendar/timely/MonthData;->mEvents:Ljava/util/List;

    if-eqz v1, :cond_7

    .line 416
    iget-object v1, p0, Lcom/android/calendar/timely/MonthData;->mEvents:Ljava/util/List;

    .line 421
    :goto_2
    invoke-static {v1, v0}, Lcom/android/calendar/timely/MonthViewUtil;->mergeEventsAndTasks(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 425
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineItem;

    .line 427
    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getStartDay()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/calendar/timely/MonthData;->getDayInMonth(I)I

    move-result v1

    .line 428
    if-gez v1, :cond_3

    .line 429
    const/4 v1, 0x0

    .line 431
    :cond_3
    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getEndDay()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/calendar/timely/MonthData;->getDayInMonth(I)I

    move-result v2

    .line 432
    invoke-virtual {p0}, Lcom/android/calendar/timely/MonthData;->getNumDays()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_4

    .line 433
    invoke-virtual {p0}, Lcom/android/calendar/timely/MonthData;->getNumDays()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :cond_4
    move v3, v1

    .line 438
    :goto_3
    if-gt v3, v2, :cond_2

    .line 439
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 440
    if-nez v1, :cond_5

    .line 441
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 442
    invoke-virtual {v4, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 444
    :cond_5
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_3

    .line 411
    :cond_6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 418
    :cond_7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_2

    .line 448
    :cond_8
    iput-object v4, p0, Lcom/android/calendar/timely/MonthData;->mDaysToItems:Landroid/util/SparseArray;

    .line 449
    return-void
.end method

.method private notifyListeners()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 540
    iget-boolean v0, p0, Lcom/android/calendar/timely/MonthData;->mEventsReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/calendar/timely/MonthData;->mTasksReady:Z

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/android/calendar/timely/MonthData;->mOnEventsAndTasksReadyListener:Lcom/android/calendar/timely/DataFactory$OnEventsAndTasksReadyListener;

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/android/calendar/timely/MonthData;->mOnEventsAndTasksReadyListener:Lcom/android/calendar/timely/DataFactory$OnEventsAndTasksReadyListener;

    invoke-interface {v0}, Lcom/android/calendar/timely/DataFactory$OnEventsAndTasksReadyListener;->onEventsAndTasksReady()V

    .line 548
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/timely/MonthData;->mListeners:Ljava/util/Map;

    monitor-enter v1

    .line 549
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 550
    iget-object v0, p0, Lcom/android/calendar/timely/MonthData;->mListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 551
    iget-object v0, p0, Lcom/android/calendar/timely/MonthData;->mListeners:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/DataFactory$OnUpdateListener;

    .line 552
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 555
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 557
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 558
    sget-object v0, Lcom/android/calendar/timely/MonthData;->TAG:Ljava/lang/String;

    const-string v1, "Notifying %d listener(s) for %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x1

    aput-object p0, v3, v4

    invoke-static {v0, v1, v3}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 562
    :cond_3
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 563
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/DataFactory$OnUpdateListener;

    .line 564
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 565
    invoke-interface {v0, p0, v1, v7}, Lcom/android/calendar/timely/DataFactory$OnUpdateListener;->postUpdate(Lcom/android/calendar/timely/MonthData;IZ)V

    goto :goto_1

    .line 567
    :cond_4
    return-void
.end method

.method private shouldWaitForTasks()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 252
    iget-boolean v1, p0, Lcom/android/calendar/timely/MonthData;->mCurrentMonth:Z

    if-nez v1, :cond_1

    .line 257
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/android/calendar/timely/MonthData;->mTasksReady:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private toString([I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 597
    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x2

    aget v2, p1, v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x23

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addEvent(Lcom/android/calendar/timely/TimelineItem;)V
    .locals 2

    .prologue
    .line 455
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/timely/MonthData;->mEvents:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/android/calendar/timely/MonthData;->mEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    iget-object v0, p0, Lcom/android/calendar/timely/MonthData;->mEvents:Ljava/util/List;

    sget-object v1, Lcom/android/calendar/timely/TimelineItem;->ItemComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 459
    invoke-direct {p0}, Lcom/android/calendar/timely/MonthData;->mergeEventsAndTasks()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    :cond_0
    monitor-exit p0

    return-void

    .line 455
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addEvents(Lcom/android/calendar/timely/RangedData$EventResults;)V
    .locals 1

    .prologue
    .line 345
    monitor-enter p0

    :try_start_0
    check-cast p1, Lcom/android/calendar/timely/MonthData$MonthEventResults;

    iget-object v0, p1, Lcom/android/calendar/timely/MonthData$MonthEventResults;->mEvents:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/calendar/timely/MonthData;->mEvents:Ljava/util/List;

    .line 346
    invoke-virtual {p0}, Lcom/android/calendar/timely/MonthData;->setEventsReady()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    monitor-exit p0

    return-void

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public containsDay(I)Z
    .locals 1

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/android/calendar/timely/MonthData;->getStartDay()I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/timely/MonthData;->getEndDay()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createTaskStorage()Lcom/android/calendar/timely/MonthData$TaskResults;
    .locals 3

    .prologue
    .line 389
    new-instance v0, Lcom/android/calendar/timely/MonthData$TaskResults;

    invoke-virtual {p0}, Lcom/android/calendar/timely/MonthData;->getStartDay()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/calendar/timely/MonthData;->getEndDay()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/timely/MonthData$TaskResults;-><init>(II)V

    return-object v0
.end method

.method public getAllTasksReady()Z
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/android/calendar/timely/MonthData;->mAllTasksReady:Z

    return v0
.end method

.method public getDateInfo(I)[I
    .locals 3

    .prologue
    .line 329
    const/4 v0, 0x1

    .line 330
    if-eqz p1, :cond_0

    .line 332
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/MonthData;->getDayOfMonth(I)I

    move-result v0

    .line 334
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/timely/MonthData;->mDateInfo:[I

    const/4 v2, 0x2

    aput v0, v1, v2

    .line 337
    iget-object v0, p0, Lcom/android/calendar/timely/MonthData;->mDateInfo:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public getDebugTag()Ljava/lang/String;
    .locals 5

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/android/calendar/timely/MonthData;->getTag()I

    move-result v0

    iget-object v1, p0, Lcom/android/calendar/timely/MonthData;->mDateInfo:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/calendar/timely/MonthData;->mDateInfo:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    add-int/lit8 v2, v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x29

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]: ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEndDay()I
    .locals 2

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/android/calendar/timely/MonthData;->getStartDay()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/calendar/timely/MonthData;->getNumDays()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public declared-synchronized getItems(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/TimelineItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/MonthData;->getDayInMonth(I)I

    move-result v0

    .line 315
    iget-object v1, p0, Lcom/android/calendar/timely/MonthData;->mDaysToItems:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNumDays()I
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lcom/android/calendar/timely/MonthData;->mNumDays:I

    return v0
.end method

.method public getStartDay()I
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lcom/android/calendar/timely/MonthData;->mStartDay:I

    return v0
.end method

.method public getTag()I
    .locals 1

    .prologue
    .line 570
    iget v0, p0, Lcom/android/calendar/timely/MonthData;->mTag:I

    return v0
.end method

.method public getToken()I
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lcom/android/calendar/timely/MonthData;->mEventToken:I

    return v0
.end method

.method public declared-synchronized hasData(I)Z
    .locals 1

    .prologue
    .line 322
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/MonthData;->getItems(I)Ljava/util/List;

    move-result-object v0

    .line 323
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isDataReady()Z
    .locals 1

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/android/calendar/timely/MonthData;->mEventsReady:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/calendar/timely/MonthData;->shouldWaitForTasks()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized onTasksPopulated()V
    .locals 1

    .prologue
    .line 353
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/calendar/timely/MonthData;->checkDataReady()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    monitor-exit p0

    return-void

    .line 353
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized populateTasks(Ljava/lang/String;Lcom/android/calendar/timely/MonthData$TaskResults;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 360
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/timely/MonthData;->mTasks:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 361
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/MonthData;->mTasks:Ljava/util/Map;

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/MonthData;->mTasks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/timely/MonthData;->mTasks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/MonthData$TaskResults;

    invoke-virtual {v0, p2}, Lcom/android/calendar/timely/MonthData$TaskResults;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 376
    :goto_0
    monitor-exit p0

    return v0

    .line 371
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/calendar/timely/MonthData;->mTasks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/MonthData$TaskResults;

    .line 372
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/calendar/timely/MonthData$TaskResults;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    if-eqz p2, :cond_4

    .line 373
    invoke-virtual {p2}, Lcom/android/calendar/timely/MonthData$TaskResults;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 375
    :goto_1
    iget-object v1, p0, Lcom/android/calendar/timely/MonthData;->mTasks:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 360
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    move v0, v1

    .line 373
    goto :goto_1
.end method

.method public declared-synchronized recycle(I)V
    .locals 4

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/MonthData;->containsDay(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/calendar/timely/MonthData;->mTimeRecycle:Lcom/android/calendar/time/Time;

    invoke-virtual {v0, p1}, Lcom/android/calendar/time/Time;->setJulianDaySafe(I)V

    .line 173
    iget-object v0, p0, Lcom/android/calendar/timely/MonthData;->mTimeRecycle:Lcom/android/calendar/time/Time;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/calendar/time/Time;->toMillis(Z)J

    move-result-wide v0

    .line 174
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 175
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 177
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 178
    iget-object v1, p0, Lcom/android/calendar/timely/MonthData;->mDateInfo:[I

    const/4 v3, 0x0

    aput v0, v1, v3

    .line 179
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 180
    iget-object v1, p0, Lcom/android/calendar/timely/MonthData;->mDateInfo:[I

    const/4 v3, 0x1

    aput v0, v1, v3

    .line 181
    const/4 v0, 0x5

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 182
    iget-object v1, p0, Lcom/android/calendar/timely/MonthData;->mDateInfo:[I

    const/4 v3, 0x2

    aput v0, v1, v3

    .line 184
    add-int/lit8 v0, v0, -0x1

    sub-int v0, p1, v0

    iput v0, p0, Lcom/android/calendar/timely/MonthData;->mStartDay:I

    .line 185
    const/4 v0, 0x5

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/MonthData;->mNumDays:I

    .line 190
    iget-object v0, p0, Lcom/android/calendar/timely/MonthData;->mDaysToItems:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/timely/MonthData;->mEvents:Ljava/util/List;

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/timely/MonthData;->mTasks:Ljava/util/Map;

    .line 196
    iget-object v0, p0, Lcom/android/calendar/timely/MonthData;->mListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 199
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/timely/MonthData;->mEventsReady:Z

    .line 200
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/timely/MonthData;->mEventToken:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    monitor-exit p0

    return-void

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerListener(ILcom/android/calendar/timely/DataFactory$OnUpdateListener;)V
    .locals 4

    .prologue
    .line 482
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/MonthData;->containsDay(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    iget-object v1, p0, Lcom/android/calendar/timely/MonthData;->mListeners:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 485
    :try_start_1
    iget-object v0, p0, Lcom/android/calendar/timely/MonthData;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 486
    iget-object v0, p0, Lcom/android/calendar/timely/MonthData;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 491
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 492
    :try_start_2
    invoke-interface {p2, p1}, Lcom/android/calendar/timely/DataFactory$OnUpdateListener;->setListenerTag(I)V

    .line 493
    invoke-interface {p2}, Lcom/android/calendar/timely/DataFactory$OnUpdateListener;->getListenerTagType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 495
    :cond_0
    monitor-exit p0

    return-void

    .line 488
    :cond_1
    :try_start_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 489
    iget-object v2, p0, Lcom/android/calendar/timely/MonthData;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 491
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 482
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAllTasksReady()V
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/timely/MonthData;->mAllTasksReady:Z

    .line 223
    return-void
.end method

.method public declared-synchronized setEventsReady()V
    .locals 1

    .prologue
    .line 207
    monitor-enter p0

    :try_start_0
    const-string v0, "MonthData dataReady"

    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/timely/MonthData;->mEventsReady:Z

    .line 209
    invoke-direct {p0}, Lcom/android/calendar/timely/MonthData;->checkDataReady()V

    .line 210
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    monitor-exit p0

    return-void

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOnEventsAndTasksReadyListener(Lcom/android/calendar/timely/DataFactory$OnEventsAndTasksReadyListener;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lcom/android/calendar/timely/MonthData;->mOnEventsAndTasksReadyListener:Lcom/android/calendar/timely/DataFactory$OnEventsAndTasksReadyListener;

    .line 386
    return-void
.end method

.method public declared-synchronized setTasksReady()V
    .locals 1

    .prologue
    .line 217
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/calendar/timely/MonthData;->mTasksReady:Z

    .line 218
    invoke-direct {p0}, Lcom/android/calendar/timely/MonthData;->checkDataReady()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    monitor-exit p0

    return-void

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setToken(I)V
    .locals 0

    .prologue
    .line 261
    iput p1, p0, Lcom/android/calendar/timely/MonthData;->mEventToken:I

    .line 262
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/calendar/timely/MonthData;->mDateInfo:[I

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/MonthData;->toString([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterListener(II)Z
    .locals 4

    .prologue
    .line 508
    iget-object v2, p0, Lcom/android/calendar/timely/MonthData;->mListeners:Ljava/util/Map;

    monitor-enter v2

    .line 509
    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/timely/MonthData;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 510
    iget-object v0, p0, Lcom/android/calendar/timely/MonthData;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 511
    if-eqz v0, :cond_2

    .line 513
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 514
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 515
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p2, :cond_0

    .line 516
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 520
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 521
    iget-object v0, p0, Lcom/android/calendar/timely/MonthData;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    :cond_2
    const/4 v0, 0x1

    monitor-exit v2

    .line 529
    :goto_0
    return v0

    .line 527
    :cond_3
    monitor-exit v2

    .line 529
    const/4 v0, 0x0

    goto :goto_0

    .line 527
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
