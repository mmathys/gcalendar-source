.class public Lcom/google/android/calendar/task/ParsedOpeningHours;
.super Ljava/lang/Object;
.source "ParsedOpeningHours.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/task/ParsedOpeningHours$Interval;,
        Lcom/google/android/calendar/task/ParsedOpeningHours$NextTime;,
        Lcom/google/android/calendar/task/ParsedOpeningHours$OpenState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final intervals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/calendar/task/ParsedOpeningHours$Interval;",
            ">;"
        }
    .end annotation
.end field

.field private final schedule:Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/google/android/calendar/task/ParsedOpeningHours;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/task/ParsedOpeningHours;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/task/ParsedOpeningHours;->intervals:Ljava/util/List;

    .line 50
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;

    iput-object v0, p0, Lcom/google/android/calendar/task/ParsedOpeningHours;->schedule:Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;

    .line 52
    invoke-static {p1}, Lcom/google/android/calendar/task/TimeScheduleUtil;->isWeeklySchedule(Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    sget-object v0, Lcom/google/android/calendar/task/ParsedOpeningHours;->TAG:Ljava/lang/String;

    const-string v1, "Schedule in unsupported format."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 69
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p1, Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;->component:[Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 61
    sget-object v0, Lcom/google/android/calendar/task/ParsedOpeningHours;->TAG:Ljava/lang/String;

    const-string v1, "Empty schedule."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 65
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/calendar/task/ParsedOpeningHours;->addIntervals(Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;)V

    .line 67
    iget-object v0, p0, Lcom/google/android/calendar/task/ParsedOpeningHours;->intervals:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 68
    iget-object v0, p0, Lcom/google/android/calendar/task/ParsedOpeningHours;->intervals:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/google/android/calendar/task/ParsedOpeningHours;->mergeAdjacentIntervals(Ljava/util/List;)V

    goto :goto_0
.end method

.method private addInterval(Lcom/google/personalization/assist/annotate/api/nano/TimeInterval;I)V
    .locals 4

    .prologue
    .line 363
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    add-int/lit8 v1, p2, 0x6

    rem-int/lit8 v1, v1, 0x7

    int-to-long v2, v1

    .line 364
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-int v0, v0

    .line 365
    iget-object v1, p1, Lcom/google/personalization/assist/annotate/api/nano/TimeInterval;->begin:Lcom/google/personalization/assist/annotate/api/nano/TimeEndpoint;

    invoke-static {v1}, Lcom/google/android/calendar/task/TimeScheduleUtil;->getSecondOfDay(Lcom/google/personalization/assist/annotate/api/nano/TimeEndpoint;)I

    move-result v1

    add-int/2addr v1, v0

    .line 366
    iget-object v2, p1, Lcom/google/personalization/assist/annotate/api/nano/TimeInterval;->end:Lcom/google/personalization/assist/annotate/api/nano/TimeEndpoint;

    invoke-static {v2}, Lcom/google/android/calendar/task/TimeScheduleUtil;->getSecondOfDay(Lcom/google/personalization/assist/annotate/api/nano/TimeEndpoint;)I

    move-result v2

    add-int/2addr v0, v2

    .line 368
    iget-object v2, p0, Lcom/google/android/calendar/task/ParsedOpeningHours;->intervals:Ljava/util/List;

    new-instance v3, Lcom/google/android/calendar/task/ParsedOpeningHours$Interval;

    invoke-direct {v3, v1, v0}, Lcom/google/android/calendar/task/ParsedOpeningHours$Interval;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    return-void
.end method

.method private addIntervals(Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 343
    iget-object v3, p1, Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;->component:[Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v5, v3, v2

    move v0, v1

    .line 344
    :goto_1
    const/4 v6, 0x7

    if-ge v0, v6, :cond_2

    .line 345
    invoke-direct {p0, v5, v0}, Lcom/google/android/calendar/task/ParsedOpeningHours;->isComponentApplicableOnDay(Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 347
    iget-object v6, v5, Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;->interval:[Lcom/google/personalization/assist/annotate/api/nano/TimeInterval;

    aget-object v6, v6, v1

    invoke-direct {p0, v6, v0}, Lcom/google/android/calendar/task/ParsedOpeningHours;->addInterval(Lcom/google/personalization/assist/annotate/api/nano/TimeInterval;I)V

    .line 344
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 348
    :cond_1
    invoke-direct {p0, v5, v0}, Lcom/google/android/calendar/task/ParsedOpeningHours;->isInvertedComponentApplicableOnDay(Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 350
    iget-object v6, v5, Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;->interval:[Lcom/google/personalization/assist/annotate/api/nano/TimeInterval;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-direct {p0, v6, v0}, Lcom/google/android/calendar/task/ParsedOpeningHours;->addInterval(Lcom/google/personalization/assist/annotate/api/nano/TimeInterval;I)V

    goto :goto_2

    .line 343
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 354
    :cond_3
    return-void
.end method

.method private createNextTime(ZII)Lcom/google/android/calendar/task/ParsedOpeningHours$NextTime;
    .locals 6

    .prologue
    const-wide/16 v4, 0x7

    .line 402
    if-le p3, p2, :cond_1

    .line 403
    sub-int v0, p3, p2

    .line 406
    :goto_0
    int-to-long v2, p3

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 407
    const/4 p3, 0x0

    .line 408
    :cond_0
    new-instance v1, Lcom/google/android/calendar/task/ParsedOpeningHours$NextTime;

    invoke-direct {v1, p1, v0, p3}, Lcom/google/android/calendar/task/ParsedOpeningHours$NextTime;-><init>(ZII)V

    return-object v1

    .line 405
    :cond_1
    sub-int v0, p3, p2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    long-to-int v1, v2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private getNearestInterval(I)Lcom/google/android/calendar/task/ParsedOpeningHours$Interval;
    .locals 3

    .prologue
    .line 419
    iget-object v0, p0, Lcom/google/android/calendar/task/ParsedOpeningHours;->intervals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/task/ParsedOpeningHours$Interval;

    .line 420
    iget v2, v0, Lcom/google/android/calendar/task/ParsedOpeningHours$Interval;->end:I

    if-ge p1, v2, :cond_0

    .line 424
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/task/ParsedOpeningHours;->intervals:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/task/ParsedOpeningHours$Interval;

    goto :goto_0
.end method

.method private isComponentApplicableOnDay(Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;I)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 283
    invoke-static {p1}, Lcom/google/android/calendar/task/TimeScheduleUtil;->isWeeklyComponent(Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;)Z

    move-result v0

    if-nez v0, :cond_1

    move v1, v2

    .line 293
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 288
    :goto_1
    iget-object v3, p1, Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;->interval:[Lcom/google/personalization/assist/annotate/api/nano/TimeInterval;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 289
    iget-object v3, p1, Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;->interval:[Lcom/google/personalization/assist/annotate/api/nano/TimeInterval;

    aget-object v3, v3, v0

    invoke-direct {p0, v3, p2}, Lcom/google/android/calendar/task/ParsedOpeningHours;->isIntervalApplicableOnDay(Lcom/google/personalization/assist/annotate/api/nano/TimeInterval;I)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 290
    goto :goto_0

    .line 288
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private isIntervalApplicableOnDay(Lcom/google/personalization/assist/annotate/api/nano/TimeInterval;I)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 327
    iget-object v2, p1, Lcom/google/personalization/assist/annotate/api/nano/TimeInterval;->begin:Lcom/google/personalization/assist/annotate/api/nano/TimeEndpoint;

    iget v2, v2, Lcom/google/personalization/assist/annotate/api/nano/TimeEndpoint;->day:I

    .line 328
    iget-object v3, p1, Lcom/google/personalization/assist/annotate/api/nano/TimeInterval;->end:Lcom/google/personalization/assist/annotate/api/nano/TimeEndpoint;

    iget v3, v3, Lcom/google/personalization/assist/annotate/api/nano/TimeEndpoint;->day:I

    .line 329
    if-gt v2, p2, :cond_0

    if-ge p2, v3, :cond_0

    move v2, v0

    .line 334
    :goto_0
    if-ne v2, v0, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 329
    goto :goto_0

    :cond_1
    move v0, v1

    .line 334
    goto :goto_1
.end method

.method private isInvertedComponentApplicableOnDay(Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 308
    invoke-static {p1}, Lcom/google/android/calendar/task/TimeScheduleUtil;->isInvertedWeeklyComponent(Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 313
    :goto_0
    return v0

    :cond_0
    iget-object v1, p1, Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;->interval:[Lcom/google/personalization/assist/annotate/api/nano/TimeInterval;

    aget-object v0, v1, v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/calendar/task/ParsedOpeningHours;->isIntervalApplicableOnDay(Lcom/google/personalization/assist/annotate/api/nano/TimeInterval;I)Z

    move-result v0

    goto :goto_0
.end method

.method private mergeAdjacentIntervals(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/calendar/task/ParsedOpeningHours$Interval;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 377
    const/4 v0, 0x1

    move v2, v0

    .line 378
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 379
    add-int/lit8 v0, v2, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/task/ParsedOpeningHours$Interval;

    .line 380
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/calendar/task/ParsedOpeningHours$Interval;

    .line 381
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/task/ParsedOpeningHours$Interval;->isAdjacentOrOverlapping(Lcom/google/android/calendar/task/ParsedOpeningHours$Interval;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 382
    iget v0, v0, Lcom/google/android/calendar/task/ParsedOpeningHours$Interval;->start:I

    iput v0, v1, Lcom/google/android/calendar/task/ParsedOpeningHours$Interval;->start:I

    .line 383
    add-int/lit8 v0, v2, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v2

    :goto_1
    move v2, v0

    .line 387
    goto :goto_0

    .line 385
    :cond_0
    add-int/lit8 v0, v2, 0x1

    goto :goto_1

    .line 388
    :cond_1
    return-void
.end method


# virtual methods
.method getNextTime(J)Lcom/google/android/calendar/task/ParsedOpeningHours$NextTime;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 185
    invoke-virtual {p0}, Lcom/google/android/calendar/task/ParsedOpeningHours;->isValidSchedule()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    const/4 v0, 0x0

    .line 214
    :goto_0
    return-object v0

    .line 189
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/calendar/task/ParsedOpeningHours;->getSecondOfWeek(J)I

    move-result v1

    .line 193
    invoke-direct {p0, v1}, Lcom/google/android/calendar/task/ParsedOpeningHours;->getNearestInterval(I)Lcom/google/android/calendar/task/ParsedOpeningHours$Interval;

    move-result-object v2

    .line 194
    iget-object v0, p0, Lcom/google/android/calendar/task/ParsedOpeningHours;->intervals:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/task/ParsedOpeningHours$Interval;

    .line 198
    invoke-virtual {v2, v1}, Lcom/google/android/calendar/task/ParsedOpeningHours$Interval;->contains(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 199
    iget v0, v2, Lcom/google/android/calendar/task/ParsedOpeningHours$Interval;->start:I

    invoke-direct {p0, v4, v1, v0}, Lcom/google/android/calendar/task/ParsedOpeningHours;->createNextTime(ZII)Lcom/google/android/calendar/task/ParsedOpeningHours$NextTime;

    move-result-object v0

    goto :goto_0

    .line 205
    :cond_1
    iget v3, v2, Lcom/google/android/calendar/task/ParsedOpeningHours$Interval;->end:I

    int-to-long v4, v3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x7

    invoke-virtual {v3, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    iget v3, v0, Lcom/google/android/calendar/task/ParsedOpeningHours$Interval;->start:I

    if-nez v3, :cond_3

    .line 208
    if-ne v2, v0, :cond_2

    move v0, v1

    .line 210
    :goto_1
    invoke-direct {p0, v8, v1, v0}, Lcom/google/android/calendar/task/ParsedOpeningHours;->createNextTime(ZII)Lcom/google/android/calendar/task/ParsedOpeningHours$NextTime;

    move-result-object v0

    goto :goto_0

    .line 209
    :cond_2
    iget v0, v0, Lcom/google/android/calendar/task/ParsedOpeningHours$Interval;->end:I

    goto :goto_1

    .line 214
    :cond_3
    iget v0, v2, Lcom/google/android/calendar/task/ParsedOpeningHours$Interval;->end:I

    invoke-direct {p0, v8, v1, v0}, Lcom/google/android/calendar/task/ParsedOpeningHours;->createNextTime(ZII)Lcom/google/android/calendar/task/ParsedOpeningHours$NextTime;

    move-result-object v0

    goto :goto_0
.end method

.method public getNextTimeChange(J)J
    .locals 3

    .prologue
    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/google/android/calendar/task/ParsedOpeningHours;->getNextTime(J)Lcom/google/android/calendar/task/ParsedOpeningHours$NextTime;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/task/ParsedOpeningHours$NextTime;

    .line 98
    invoke-virtual {v0}, Lcom/google/android/calendar/task/ParsedOpeningHours$NextTime;->getWeekSecond()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/calendar/task/ParsedOpeningHours;->getNextTimeOfWeekFromStart(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method getNextTimeOfWeekFromStart(JI)J
    .locals 7

    .prologue
    .line 261
    invoke-virtual {p0, p1, p2}, Lcom/google/android/calendar/task/ParsedOpeningHours;->getSecondOfWeek(J)I

    move-result v0

    .line 262
    sub-int v0, p3, v0

    .line 263
    if-gtz v0, :cond_0

    .line 266
    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x7

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    .line 268
    :cond_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public getOpenState(J)Lcom/google/android/calendar/task/ParsedOpeningHours$OpenState;
    .locals 7

    .prologue
    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/google/android/calendar/task/ParsedOpeningHours;->getNextTime(J)Lcom/google/android/calendar/task/ParsedOpeningHours$NextTime;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_2

    .line 82
    # getter for: Lcom/google/android/calendar/task/ParsedOpeningHours$NextTime;->duration:I
    invoke-static {v0}, Lcom/google/android/calendar/task/ParsedOpeningHours$NextTime;->access$000(Lcom/google/android/calendar/task/ParsedOpeningHours$NextTime;)I

    move-result v1

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x7

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 83
    sget-object v0, Lcom/google/android/calendar/task/ParsedOpeningHours$OpenState;->ALWAYS_OPEN:Lcom/google/android/calendar/task/ParsedOpeningHours$OpenState;

    .line 87
    :goto_0
    return-object v0

    .line 85
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/calendar/task/ParsedOpeningHours$NextTime;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/calendar/task/ParsedOpeningHours$OpenState;->OPEN:Lcom/google/android/calendar/task/ParsedOpeningHours$OpenState;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/calendar/task/ParsedOpeningHours$OpenState;->CLOSED:Lcom/google/android/calendar/task/ParsedOpeningHours$OpenState;

    goto :goto_0

    .line 87
    :cond_2
    sget-object v0, Lcom/google/android/calendar/task/ParsedOpeningHours$OpenState;->CLOSED:Lcom/google/android/calendar/task/ParsedOpeningHours$OpenState;

    goto :goto_0
.end method

.method getSecondOfWeek(J)I
    .locals 7

    .prologue
    .line 231
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lcom/google/android/calendar/task/ParsedOpeningHours;->schedule:Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;

    iget v3, v3, Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;->timeZoneOffsetMinutes:I

    int-to-long v4, v3

    .line 232
    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 234
    invoke-virtual {p0, p1, p2}, Lcom/google/android/calendar/task/ParsedOpeningHours;->startOfWeekTimeMs(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 235
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long v0, p1, v0

    .line 236
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x7

    .line 237
    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    rem-long/2addr v0, v2

    long-to-int v0, v0

    .line 235
    return v0
.end method

.method public isValidSchedule()Z
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/calendar/task/ParsedOpeningHours;->intervals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/task/ParsedOpeningHours;->schedule:Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;

    invoke-static {v0}, Lcom/google/android/calendar/task/TimeScheduleUtil;->isWeeklySchedule(Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/task/ParsedOpeningHours;->schedule:Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;

    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;->component:[Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method startOfWeekTimeMs(J)J
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 241
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 242
    invoke-virtual {v0, p1, p2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 243
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 244
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 245
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 246
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 247
    const/4 v1, 0x7

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 248
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method
