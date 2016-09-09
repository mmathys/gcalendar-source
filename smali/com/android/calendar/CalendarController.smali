.class public Lcom/android/calendar/CalendarController;
.super Ljava/lang/Object;
.source "CalendarController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/CalendarController$Command;
    }
.end annotation


# static fields
.field private static final instances:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/calendar/CalendarController;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final filters:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final handlers:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/calendar/CalendarController$Command$Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivity:Landroid/content/Context;

.field private volatile mDispatchInProgressCounter:I

.field private mEndDay:I

.field private mFirstHandler:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/calendar/CalendarController$Command$Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mStartDay:I

.field private final mTime:Lcom/android/calendar/time/Time;

.field private mToBeAddedFirstHandler:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/calendar/CalendarController$Command$Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mToBeAddedHandlers:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/calendar/CalendarController$Command$Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mToBeRemovedHandlers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdateTimezone:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/calendar/CalendarController;->instances:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/CalendarController;->handlers:Ljava/util/LinkedHashMap;

    .line 59
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarController;->mToBeRemovedHandlers:Ljava/util/LinkedList;

    .line 60
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarController;->mToBeAddedHandlers:Ljava/util/LinkedHashMap;

    .line 64
    iput v4, p0, Lcom/android/calendar/CalendarController;->mDispatchInProgressCounter:I

    .line 69
    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/CalendarController;->filters:Ljava/util/WeakHashMap;

    .line 71
    new-instance v0, Lcom/android/calendar/time/Time;

    invoke-direct {v0}, Lcom/android/calendar/time/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarController;->mTime:Lcom/android/calendar/time/Time;

    .line 77
    new-instance v0, Lcom/android/calendar/CalendarController$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/CalendarController$1;-><init>(Lcom/android/calendar/CalendarController;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarController;->mUpdateTimezone:Ljava/lang/Runnable;

    .line 253
    iput-object p1, p0, Lcom/android/calendar/CalendarController;->mActivity:Landroid/content/Context;

    .line 254
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mUpdateTimezone:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 255
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mTime:Lcom/android/calendar/time/Time;

    invoke-virtual {v0}, Lcom/android/calendar/time/Time;->setToNow()V

    .line 256
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mTime:Lcom/android/calendar/time/Time;

    invoke-virtual {v0, v4}, Lcom/android/calendar/time/Time;->toMillis(Z)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/calendar/CalendarController;->mTime:Lcom/android/calendar/time/Time;

    iget-wide v2, v2, Lcom/android/calendar/time/Time;->gmtoff:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/time/Time;->getJulianDay(JJ)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarController;->mStartDay:I

    .line 257
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mTime:Lcom/android/calendar/time/Time;

    invoke-virtual {v0, v4}, Lcom/android/calendar/time/Time;->toMillis(Z)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/calendar/CalendarController;->mTime:Lcom/android/calendar/time/Time;

    iget-wide v2, v2, Lcom/android/calendar/time/Time;->gmtoff:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/time/Time;->getJulianDay(JJ)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarController;->mEndDay:I

    .line 258
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/CalendarController;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mActivity:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/CalendarController;)Lcom/android/calendar/time/Time;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mTime:Lcom/android/calendar/time/Time;

    return-object v0
.end method

.method private executeCommand(Ljava/lang/Object;Lcom/android/calendar/CalendarController$Command;)V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const-wide/16 v2, 0x0

    .line 372
    const-string v0, "CalendarController"

    invoke-virtual {p2}, Lcom/android/calendar/CalendarController$Command;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 374
    iget-wide v0, p2, Lcom/android/calendar/CalendarController$Command;->type:J

    const-wide/16 v4, 0x80

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mActivity:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getLatencyLogger(Landroid/content/Context;)Lcom/android/calendar/latency/LatencyLogger;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/android/calendar/latency/LatencyLogger;->markAt(I)V

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->filters:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 379
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide v4, p2, Lcom/android/calendar/CalendarController$Command;->type:J

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 381
    const-string v0, "CalendarController"

    const-string v1, "Event suppressed"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 488
    :goto_0
    return-void

    .line 394
    :cond_1
    iget-object v0, p2, Lcom/android/calendar/CalendarController$Command;->startTime:Lcom/android/calendar/time/Time;

    if-eqz v0, :cond_f

    .line 395
    iget-object v0, p2, Lcom/android/calendar/CalendarController$Command;->startTime:Lcom/android/calendar/time/Time;

    invoke-virtual {v0, v7}, Lcom/android/calendar/time/Time;->toMillis(Z)J

    move-result-wide v0

    .line 399
    :goto_1
    iget-object v4, p2, Lcom/android/calendar/CalendarController$Command;->selectedTime:Lcom/android/calendar/time/Time;

    if-eqz v4, :cond_6

    iget-object v4, p2, Lcom/android/calendar/CalendarController$Command;->selectedTime:Lcom/android/calendar/time/Time;

    invoke-virtual {v4, v7}, Lcom/android/calendar/time/Time;->toMillis(Z)J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-eqz v4, :cond_6

    .line 400
    iget-object v4, p0, Lcom/android/calendar/CalendarController;->mTime:Lcom/android/calendar/time/Time;

    iget-object v5, p2, Lcom/android/calendar/CalendarController$Command;->selectedTime:Lcom/android/calendar/time/Time;

    invoke-virtual {v4, v5}, Lcom/android/calendar/time/Time;->set(Lcom/android/calendar/time/Time;)V

    .line 416
    :goto_2
    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 417
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mTime:Lcom/android/calendar/time/Time;

    iput-object v0, p2, Lcom/android/calendar/CalendarController$Command;->startTime:Lcom/android/calendar/time/Time;

    .line 429
    :cond_2
    monitor-enter p0

    .line 430
    :try_start_0
    iget v0, p0, Lcom/android/calendar/CalendarController;->mDispatchInProgressCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/calendar/CalendarController;->mDispatchInProgressCounter:I

    .line 432
    const-string v0, "CalendarController"

    const-string v1, "executeCommand: Dispatching to %d handlers"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/calendar/CalendarController;->handlers:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v1, v4}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 434
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mFirstHandler:Landroid/util/Pair;

    if-eqz v0, :cond_3

    .line 436
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mFirstHandler:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/calendar/CalendarController$Command$Handler;

    .line 437
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/android/calendar/CalendarController$Command$Handler;->getSupportedCommands()J

    move-result-wide v4

    iget-wide v6, p2, Lcom/android/calendar/CalendarController$Command;->type:J

    and-long/2addr v4, v6

    cmp-long v1, v4, v2

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/calendar/CalendarController;->mToBeRemovedHandlers:Ljava/util/LinkedList;

    iget-object v4, p0, Lcom/android/calendar/CalendarController;->mFirstHandler:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 438
    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 439
    invoke-interface {v0, p2}, Lcom/android/calendar/CalendarController$Command$Handler;->handleCommand(Lcom/android/calendar/CalendarController$Command;)V

    .line 443
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->handlers:Ljava/util/LinkedHashMap;

    .line 444
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 445
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 446
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 447
    iget-object v1, p0, Lcom/android/calendar/CalendarController;->mFirstHandler:Landroid/util/Pair;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/calendar/CalendarController;->mFirstHandler:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v5, v1, :cond_4

    .line 451
    :cond_5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarController$Command$Handler;

    .line 452
    if-eqz v0, :cond_4

    .line 453
    invoke-interface {v0}, Lcom/android/calendar/CalendarController$Command$Handler;->getSupportedCommands()J

    move-result-wide v6

    iget-wide v8, p2, Lcom/android/calendar/CalendarController$Command;->type:J

    and-long/2addr v6, v8

    cmp-long v1, v6, v2

    if-eqz v1, :cond_4

    .line 454
    iget-object v1, p0, Lcom/android/calendar/CalendarController;->mToBeRemovedHandlers:Ljava/util/LinkedList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 457
    invoke-interface {v0, p2}, Lcom/android/calendar/CalendarController$Command$Handler;->handleCommand(Lcom/android/calendar/CalendarController$Command;)V

    goto :goto_3

    .line 487
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 402
    :cond_6
    cmp-long v4, v0, v2

    if-eqz v4, :cond_8

    .line 405
    iget-object v4, p0, Lcom/android/calendar/CalendarController;->mTime:Lcom/android/calendar/time/Time;

    invoke-virtual {v4, v7}, Lcom/android/calendar/time/Time;->toMillis(Z)J

    move-result-wide v4

    .line 406
    cmp-long v6, v4, v0

    if-ltz v6, :cond_7

    iget-object v6, p2, Lcom/android/calendar/CalendarController$Command;->endTime:Lcom/android/calendar/time/Time;

    if-eqz v6, :cond_8

    iget-object v6, p2, Lcom/android/calendar/CalendarController$Command;->endTime:Lcom/android/calendar/time/Time;

    .line 408
    invoke-virtual {v6, v7}, Lcom/android/calendar/time/Time;->toMillis(Z)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_8

    .line 409
    :cond_7
    iget-object v4, p0, Lcom/android/calendar/CalendarController;->mTime:Lcom/android/calendar/time/Time;

    iget-object v5, p2, Lcom/android/calendar/CalendarController$Command;->startTime:Lcom/android/calendar/time/Time;

    invoke-virtual {v4, v5}, Lcom/android/calendar/time/Time;->set(Lcom/android/calendar/time/Time;)V

    .line 412
    :cond_8
    iget-object v4, p0, Lcom/android/calendar/CalendarController;->mTime:Lcom/android/calendar/time/Time;

    iput-object v4, p2, Lcom/android/calendar/CalendarController$Command;->selectedTime:Lcom/android/calendar/time/Time;

    goto/16 :goto_2

    .line 462
    :cond_9
    :try_start_1
    iget v0, p0, Lcom/android/calendar/CalendarController;->mDispatchInProgressCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/calendar/CalendarController;->mDispatchInProgressCounter:I

    .line 464
    iget v0, p0, Lcom/android/calendar/CalendarController;->mDispatchInProgressCounter:I

    if-nez v0, :cond_e

    .line 467
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mToBeRemovedHandlers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 468
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mToBeRemovedHandlers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 469
    iget-object v2, p0, Lcom/android/calendar/CalendarController;->handlers:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    iget-object v2, p0, Lcom/android/calendar/CalendarController;->mFirstHandler:Landroid/util/Pair;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/calendar/CalendarController;->mFirstHandler:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 471
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/CalendarController;->mFirstHandler:Landroid/util/Pair;

    goto :goto_4

    .line 474
    :cond_b
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mToBeRemovedHandlers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 477
    :cond_c
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mToBeAddedFirstHandler:Landroid/util/Pair;

    if-eqz v0, :cond_d

    .line 478
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mToBeAddedFirstHandler:Landroid/util/Pair;

    iput-object v0, p0, Lcom/android/calendar/CalendarController;->mFirstHandler:Landroid/util/Pair;

    .line 479
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/CalendarController;->mToBeAddedFirstHandler:Landroid/util/Pair;

    .line 481
    :cond_d
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mToBeAddedHandlers:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-lez v0, :cond_e

    .line 482
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mToBeAddedHandlers:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 483
    iget-object v3, p0, Lcom/android/calendar/CalendarController;->handlers:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarController$Command$Handler;

    invoke-virtual {v3, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 487
    :cond_e
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_f
    move-wide v0, v2

    goto/16 :goto_1
.end method

.method public static getInstance(Landroid/app/Activity;)Lcom/android/calendar/CalendarController;
    .locals 4

    .prologue
    .line 227
    sget-object v2, Lcom/android/calendar/CalendarController;->instances:Ljava/util/WeakHashMap;

    monitor-enter v2

    .line 228
    const/4 v1, 0x0

    .line 229
    :try_start_0
    sget-object v0, Lcom/android/calendar/CalendarController;->instances:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 230
    if-eqz v0, :cond_1

    .line 231
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarController;

    .line 234
    :goto_0
    if-nez v0, :cond_0

    .line 235
    new-instance v0, Lcom/android/calendar/CalendarController;

    invoke-direct {v0, p0}, Lcom/android/calendar/CalendarController;-><init>(Landroid/app/Activity;)V

    .line 236
    sget-object v1, Lcom/android/calendar/CalendarController;->instances:Ljava/util/WeakHashMap;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p0, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    :cond_0
    monitor-exit v2

    return-object v0

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static launchSettings(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 579
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->SETTINGS_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 580
    const/high16 v1, 0x20020000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 581
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 582
    return-void
.end method

.method public static launchViewDetails(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;)V
    .locals 3

    .prologue
    .line 566
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 567
    const-class v1, Lcom/android/calendar/event/EventInfoActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 568
    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 569
    invoke-static {v0, p1}, Lcom/android/calendar/Utils;->setLaunchTimelineItem(Landroid/content/Intent;Lcom/android/calendar/timely/TimelineItem;)V

    .line 570
    invoke-static {p0}, Lcom/android/calendar/ExtensionsFactory;->getLatencyLogger(Landroid/content/Context;)Lcom/android/calendar/latency/LatencyLogger;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/android/calendar/latency/LatencyLogger;->markAt(I)V

    .line 571
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 572
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 573
    check-cast p0, Landroid/app/Activity;

    sget v0, Lcom/android/calendar/R$anim;->event_info_anim_grow:I

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 576
    :cond_0
    return-void
.end method

.method public static removeInstance(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 249
    sget-object v0, Lcom/android/calendar/CalendarController;->instances:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    return-void
.end method


# virtual methods
.method public deregisterAllHandlers()V
    .locals 2

    .prologue
    .line 533
    monitor-enter p0

    .line 534
    :try_start_0
    iget v0, p0, Lcom/android/calendar/CalendarController;->mDispatchInProgressCounter:I

    if-lez v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mToBeRemovedHandlers:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/android/calendar/CalendarController;->handlers:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 541
    :goto_0
    monitor-exit p0

    .line 542
    return-void

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->handlers:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 539
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/CalendarController;->mFirstHandler:Landroid/util/Pair;

    goto :goto_0

    .line 541
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deregisterHandler(Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 519
    monitor-enter p0

    .line 520
    :try_start_0
    iget v0, p0, Lcom/android/calendar/CalendarController;->mDispatchInProgressCounter:I

    if-lez v0, :cond_1

    .line 522
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mToBeRemovedHandlers:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 529
    :cond_0
    :goto_0
    monitor-exit p0

    .line 530
    return-void

    .line 524
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->handlers:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mFirstHandler:Landroid/util/Pair;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mFirstHandler:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    .line 526
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/CalendarController;->mFirstHandler:Landroid/util/Pair;

    goto :goto_0

    .line 529
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mTime:Lcom/android/calendar/time/Time;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/calendar/time/Time;->toMillis(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public goTo(Ljava/lang/Object;Lcom/android/calendar/time/Time;J)V
    .locals 5

    .prologue
    .line 290
    new-instance v0, Lcom/android/calendar/CalendarController$Command;

    const-wide/16 v2, 0x20

    invoke-direct {v0, v2, v3}, Lcom/android/calendar/CalendarController$Command;-><init>(J)V

    .line 291
    iput-object p2, v0, Lcom/android/calendar/CalendarController$Command;->startTime:Lcom/android/calendar/time/Time;

    .line 292
    iput-object p2, v0, Lcom/android/calendar/CalendarController$Command;->selectedTime:Lcom/android/calendar/time/Time;

    .line 293
    iput-wide p3, v0, Lcom/android/calendar/CalendarController$Command;->extraLong:J

    .line 294
    invoke-direct {p0, p1, v0}, Lcom/android/calendar/CalendarController;->executeCommand(Ljava/lang/Object;Lcom/android/calendar/CalendarController$Command;)V

    .line 295
    return-void
.end method

.method public goToDate(Ljava/lang/Object;Lcom/android/calendar/time/Time;)V
    .locals 2

    .prologue
    .line 262
    const-wide/16 v0, 0x2

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/calendar/CalendarController;->goTo(Ljava/lang/Object;Lcom/android/calendar/time/Time;J)V

    .line 263
    return-void
.end method

.method public goToTime(Ljava/lang/Object;Lcom/android/calendar/time/Time;)V
    .locals 2

    .prologue
    .line 267
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/calendar/CalendarController;->goTo(Ljava/lang/Object;Lcom/android/calendar/time/Time;J)V

    .line 268
    return-void
.end method

.method public notifyEventsChanged(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 298
    new-instance v0, Lcom/android/calendar/CalendarController$Command;

    const-wide/16 v2, 0x80

    invoke-direct {v0, v2, v3}, Lcom/android/calendar/CalendarController$Command;-><init>(J)V

    invoke-direct {p0, p1, v0}, Lcom/android/calendar/CalendarController;->executeCommand(Ljava/lang/Object;Lcom/android/calendar/CalendarController$Command;)V

    .line 299
    return-void
.end method

.method public notifyHomePressed(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 302
    new-instance v0, Lcom/android/calendar/CalendarController$Command;

    const-wide/16 v2, 0x200

    invoke-direct {v0, v2, v3}, Lcom/android/calendar/CalendarController$Command;-><init>(J)V

    invoke-direct {p0, p1, v0}, Lcom/android/calendar/CalendarController;->executeCommand(Ljava/lang/Object;Lcom/android/calendar/CalendarController$Command;)V

    .line 303
    return-void
.end method

.method public registerFirstHandler(ILcom/android/calendar/CalendarController$Command$Handler;)V
    .locals 2

    .prologue
    .line 508
    monitor-enter p0

    .line 509
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/CalendarController;->registerHandler(ILcom/android/calendar/CalendarController$Command$Handler;)V

    .line 510
    iget v0, p0, Lcom/android/calendar/CalendarController;->mDispatchInProgressCounter:I

    if-lez v0, :cond_0

    .line 511
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarController;->mToBeAddedFirstHandler:Landroid/util/Pair;

    .line 515
    :goto_0
    monitor-exit p0

    .line 516
    return-void

    .line 513
    :cond_0
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarController;->mFirstHandler:Landroid/util/Pair;

    goto :goto_0

    .line 515
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerHandler(ILcom/android/calendar/CalendarController$Command$Handler;)V
    .locals 2

    .prologue
    .line 498
    monitor-enter p0

    .line 499
    :try_start_0
    iget v0, p0, Lcom/android/calendar/CalendarController;->mDispatchInProgressCounter:I

    if-lez v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mToBeAddedHandlers:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    :goto_0
    monitor-exit p0

    .line 505
    return-void

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->handlers:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 504
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTime(J)V
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mTime:Lcom/android/calendar/time/Time;

    invoke-virtual {v0, p1, p2}, Lcom/android/calendar/time/Time;->set(J)V

    .line 558
    return-void
.end method

.method public toggleDatePicker(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 350
    new-instance v0, Lcom/android/calendar/CalendarController$Command;

    const-wide/16 v2, 0x1000

    invoke-direct {v0, v2, v3}, Lcom/android/calendar/CalendarController$Command;-><init>(J)V

    invoke-direct {p0, p1, v0}, Lcom/android/calendar/CalendarController;->executeCommand(Ljava/lang/Object;Lcom/android/calendar/CalendarController$Command;)V

    .line 351
    return-void
.end method

.method public updateVisibleRange(Ljava/lang/Object;Lcom/android/calendar/time/Time;Lcom/android/calendar/time/Time;Lcom/android/calendar/time/Time;ZJ)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 323
    new-instance v0, Lcom/android/calendar/CalendarController$Command;

    const-wide/16 v2, 0x400

    invoke-direct {v0, v2, v3}, Lcom/android/calendar/CalendarController$Command;-><init>(J)V

    .line 324
    iput-object p2, v0, Lcom/android/calendar/CalendarController$Command;->startTime:Lcom/android/calendar/time/Time;

    .line 327
    new-instance v1, Lcom/android/calendar/time/Time;

    iget-object v2, p0, Lcom/android/calendar/CalendarController;->mActivity:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/calendar/time/Time;-><init>(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v1}, Lcom/android/calendar/time/Time;->setToNow()V

    .line 329
    invoke-virtual {p2, v6}, Lcom/android/calendar/time/Time;->toMillis(Z)J

    move-result-wide v2

    iget-wide v4, p2, Lcom/android/calendar/time/Time;->gmtoff:J

    invoke-static {v2, v3, v4, v5}, Lcom/android/calendar/time/Time;->getJulianDay(JJ)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/CalendarController;->mStartDay:I

    .line 330
    invoke-virtual {p3, v6}, Lcom/android/calendar/time/Time;->toMillis(Z)J

    move-result-wide v2

    iget-wide v4, p3, Lcom/android/calendar/time/Time;->gmtoff:J

    invoke-static {v2, v3, v4, v5}, Lcom/android/calendar/time/Time;->getJulianDay(JJ)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/CalendarController;->mEndDay:I

    .line 331
    invoke-virtual {v1, v6}, Lcom/android/calendar/time/Time;->toMillis(Z)J

    move-result-wide v2

    iget-wide v4, v1, Lcom/android/calendar/time/Time;->gmtoff:J

    invoke-static {v2, v3, v4, v5}, Lcom/android/calendar/time/Time;->getJulianDay(JJ)I

    move-result v2

    .line 332
    if-eqz p4, :cond_1

    .line 333
    iput-object p4, v0, Lcom/android/calendar/CalendarController$Command;->selectedTime:Lcom/android/calendar/time/Time;

    .line 338
    :cond_0
    :goto_0
    if-eqz p5, :cond_2

    :goto_1
    iput-object p3, v0, Lcom/android/calendar/CalendarController$Command;->endTime:Lcom/android/calendar/time/Time;

    .line 339
    iput-wide p6, v0, Lcom/android/calendar/CalendarController$Command;->extraLong:J

    .line 340
    invoke-direct {p0, p1, v0}, Lcom/android/calendar/CalendarController;->executeCommand(Ljava/lang/Object;Lcom/android/calendar/CalendarController$Command;)V

    .line 341
    return-void

    .line 334
    :cond_1
    iget v3, p0, Lcom/android/calendar/CalendarController;->mStartDay:I

    if-gt v3, v2, :cond_0

    iget v3, p0, Lcom/android/calendar/CalendarController;->mEndDay:I

    if-gt v2, v3, :cond_0

    .line 335
    iput-object v1, v0, Lcom/android/calendar/CalendarController$Command;->selectedTime:Lcom/android/calendar/time/Time;

    goto :goto_0

    :cond_2
    move-object p3, p2

    .line 338
    goto :goto_1
.end method
