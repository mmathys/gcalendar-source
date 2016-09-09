.class public Lcom/android/calendar/widget/WidgetDataReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WidgetDataReceiver.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTimezone:Ljava/lang/String;

.field private mWidgetLoaderManager:Lcom/android/calendar/widget/WidgetLoaderManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/android/calendar/widget/WidgetDataReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/calendar/widget/WidgetDataReceiver;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 56
    const-string v0, "CalendarWidget"

    const-string v1, "WidgetDataReceiver construct"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 57
    return-void
.end method

.method static synthetic access$002(Lcom/android/calendar/widget/WidgetDataReceiver;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/calendar/widget/WidgetDataReceiver;->mTimezone:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/calendar/widget/WidgetDataReceiver;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/calendar/widget/WidgetDataReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/widget/WidgetDataReceiver;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/calendar/widget/WidgetDataReceiver;->startRefreshData(Landroid/content/BroadcastReceiver$PendingResult;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/calendar/widget/WidgetDataReceiver;Lcom/android/calendar/widget/CalendarAppWidgetModel;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/widget/WidgetDataReceiver;->fillRows(Lcom/android/calendar/widget/CalendarAppWidgetModel;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/calendar/widget/WidgetDataReceiver;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/calendar/widget/WidgetDataReceiver;->notifyWidgetsChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/calendar/widget/WidgetDataReceiver;Lcom/android/calendar/widget/CalendarAppWidgetModel;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/calendar/widget/WidgetDataReceiver;->broadcastNextEventUpdate(Lcom/android/calendar/widget/CalendarAppWidgetModel;)V

    return-void
.end method

.method private addAll(Ljava/util/List;ILcom/android/calendar/time/Time;Ljava/util/List;ZILcom/android/calendar/DateTimeFormatHelper;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/calendar/timely/TimelineItem;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/widget/WidgetRow$Row;",
            ">;I",
            "Lcom/android/calendar/time/Time;",
            "Ljava/util/List",
            "<TT;>;ZI",
            "Lcom/android/calendar/DateTimeFormatHelper;",
            ")V"
        }
    .end annotation

    .prologue
    .line 315
    if-eqz p5, :cond_0

    .line 316
    iget-object v1, p0, Lcom/android/calendar/widget/WidgetDataReceiver;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineItem;

    invoke-static {v1, v0, p2, p7}, Lcom/android/calendar/widget/WidgetRow;->createChip(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;ILcom/android/calendar/DateTimeFormatHelper;)Lcom/android/calendar/widget/WidgetRow$Chip;

    move-result-object v0

    .line 317
    invoke-virtual {v0}, Lcom/android/calendar/widget/WidgetRow$Chip;->setIsFirst()Lcom/android/calendar/widget/WidgetRow$Chip;

    move-result-object v0

    .line 318
    invoke-virtual {v0, p6, p2, p3, p7}, Lcom/android/calendar/widget/WidgetRow$Chip;->setDayInfo(IILcom/android/calendar/time/Time;Lcom/android/calendar/DateTimeFormatHelper;)Lcom/android/calendar/widget/WidgetRow$Chip;

    move-result-object v0

    .line 316
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 320
    iget-object v2, p0, Lcom/android/calendar/widget/WidgetDataReceiver;->mContext:Landroid/content/Context;

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineItem;

    invoke-static {v2, v0, p2, p7}, Lcom/android/calendar/widget/WidgetRow;->createChip(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;ILcom/android/calendar/DateTimeFormatHelper;)Lcom/android/calendar/widget/WidgetRow$Chip;

    move-result-object v0

    .line 321
    invoke-virtual {v0, p6, p2, p3, p7}, Lcom/android/calendar/widget/WidgetRow$Chip;->setDayInfo(IILcom/android/calendar/time/Time;Lcom/android/calendar/DateTimeFormatHelper;)Lcom/android/calendar/widget/WidgetRow$Chip;

    move-result-object v0

    .line 320
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 324
    :cond_0
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineItem;

    .line 325
    iget-object v2, p0, Lcom/android/calendar/widget/WidgetDataReceiver;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, p2, p7}, Lcom/android/calendar/widget/WidgetRow;->createChip(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;ILcom/android/calendar/DateTimeFormatHelper;)Lcom/android/calendar/widget/WidgetRow$Chip;

    move-result-object v0

    .line 326
    invoke-virtual {v0, p6, p2, p3, p7}, Lcom/android/calendar/widget/WidgetRow$Chip;->setDayInfo(IILcom/android/calendar/time/Time;Lcom/android/calendar/DateTimeFormatHelper;)Lcom/android/calendar/widget/WidgetRow$Chip;

    move-result-object v0

    .line 325
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 329
    :cond_1
    return-void
.end method

.method private broadcastNextEventUpdate(Lcom/android/calendar/widget/CalendarAppWidgetModel;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 336
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 338
    iget-object v0, p0, Lcom/android/calendar/widget/WidgetDataReceiver;->mTimezone:Ljava/lang/String;

    .line 339
    invoke-static {v2, v3, v0}, Lcom/android/calendar/widget/WidgetDataReceiver;->getNextMidnightTimeMillis(JLjava/lang/String;)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/widget/WidgetDataReceiver;->calculateUpdateTime(Lcom/android/calendar/widget/CalendarAppWidgetModel;JJ)J

    move-result-wide v0

    .line 343
    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 344
    const-string v4, "CalendarWidget"

    const-string v5, "Encountered bad trigger time <%s>"

    new-array v6, v9, [Ljava/lang/Object;

    .line 345
    invoke-static {v2, v3, v0, v1}, Lcom/android/calendar/widget/WidgetUtils;->formatDebugTime(JJ)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v8

    .line 344
    invoke-static {v4, v5, v6}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 346
    const-wide/32 v0, 0x1499700

    add-long/2addr v0, v2

    .line 348
    :cond_0
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/calendar/widget/WidgetDataReceiver;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/calendar/widget/WidgetUtils;->getWidgetNextUpdateAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 349
    const-string v5, "TriggerTime"

    invoke-virtual {v4, v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 350
    iget-object v5, p0, Lcom/android/calendar/widget/WidgetDataReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 351
    const-string v4, "CalendarWidget"

    const-string v5, "... Send next update time:%d %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 352
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/widget/WidgetUtils;->formatDebugTime(JJ)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v9

    .line 351
    invoke-static {v4, v5, v6}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 353
    return-void
.end method

.method private calculateUpdateTime(Lcom/android/calendar/widget/CalendarAppWidgetModel;JJ)J
    .locals 6

    .prologue
    .line 361
    invoke-virtual {p1}, Lcom/android/calendar/widget/CalendarAppWidgetModel;->hasEventsToday()Z

    move-result v0

    if-nez v0, :cond_1

    .line 394
    :cond_0
    return-wide p4

    .line 364
    :cond_1
    invoke-virtual {p1}, Lcom/android/calendar/widget/CalendarAppWidgetModel;->getStorage()Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->getTodayTimedTaskBuckets()Ljava/util/List;

    move-result-object v0

    .line 365
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 366
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineItem;

    .line 367
    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getStartMillis()J

    move-result-wide v2

    .line 368
    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getEndMillis()J

    move-result-wide v4

    .line 371
    cmp-long v0, p2, v2

    if-gez v0, :cond_3

    .line 372
    invoke-static {p4, p5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p4

    goto :goto_0

    .line 373
    :cond_3
    cmp-long v0, p2, v4

    if-gez v0, :cond_2

    .line 374
    invoke-static {p4, p5, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p4

    goto :goto_0

    .line 379
    :cond_4
    invoke-virtual {p1}, Lcom/android/calendar/widget/CalendarAppWidgetModel;->getStorage()Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->getTodayTimedBuckets()Ljava/util/List;

    move-result-object v0

    .line 380
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 383
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineEvent;

    .line 384
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelineEvent;->getStartMillis()J

    move-result-wide v2

    .line 385
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelineEvent;->getEndMillis()J

    move-result-wide v4

    .line 388
    cmp-long v0, p2, v2

    if-gez v0, :cond_6

    .line 389
    invoke-static {p4, p5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p4

    goto :goto_1

    .line 390
    :cond_6
    cmp-long v0, p2, v4

    if-gez v0, :cond_5

    .line 391
    invoke-static {p4, p5, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p4

    goto :goto_1
.end method

.method private createRefreshDataRunnable(Landroid/content/BroadcastReceiver$PendingResult;)Ljava/lang/Runnable;
    .locals 5

    .prologue
    .line 78
    const-string v0, "CalendarWidget"

    const-string v1, "createRefreshDataRunnable when:%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/android/calendar/widget/CalendarAppWidgetService;->sCurrentVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 79
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 78
    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 81
    new-instance v0, Lcom/android/calendar/widget/WidgetDataReceiver$1;

    invoke-direct {v0, p0, p1}, Lcom/android/calendar/widget/WidgetDataReceiver$1;-><init>(Lcom/android/calendar/widget/WidgetDataReceiver;Landroid/content/BroadcastReceiver$PendingResult;)V

    return-object v0
.end method

.method private fillRows(Lcom/android/calendar/widget/CalendarAppWidgetModel;Ljava/util/List;)V
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/widget/CalendarAppWidgetModel;",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/widget/WidgetRow$Row;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 167
    const-string v4, "CalendarWidget"

    const-string v5, "... fillRows from ...."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 168
    new-instance v7, Lcom/android/calendar/time/Time;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/widget/WidgetDataReceiver;->mTimezone:Ljava/lang/String;

    invoke-direct {v7, v4}, Lcom/android/calendar/time/Time;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v7}, Lcom/android/calendar/time/Time;->setToNow()V

    .line 170
    invoke-virtual/range {p1 .. p1}, Lcom/android/calendar/widget/CalendarAppWidgetModel;->getStartDay()I

    move-result v10

    .line 171
    invoke-static {}, Lcom/android/calendar/DateTimeFormatHelper;->getInstance()Lcom/android/calendar/DateTimeFormatHelper;

    move-result-object v11

    .line 173
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/android/calendar/widget/CalendarAppWidgetModel;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 174
    :cond_0
    new-instance v4, Lcom/android/calendar/widget/WidgetRow$NoEventsScheduled;

    invoke-direct {v4, v10, v7, v11}, Lcom/android/calendar/widget/WidgetRow$NoEventsScheduled;-><init>(ILcom/android/calendar/time/Time;Lcom/android/calendar/DateTimeFormatHelper;)V

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    :goto_0
    return-void

    .line 179
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/calendar/widget/CalendarAppWidgetModel;->getEndDay()I

    move-result v18

    .line 181
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/widget/WidgetDataReceiver;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/calendar/Utils;->getShowWeekNumber(Landroid/content/Context;)Z

    move-result v19

    .line 184
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v20

    .line 185
    const/16 v4, 0xb

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 186
    const/16 v4, 0xc

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->clear(I)V

    .line 187
    const/16 v4, 0xd

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->clear(I)V

    .line 188
    const/16 v4, 0xe

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->clear(I)V

    .line 190
    const/4 v4, 0x7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/widget/WidgetDataReceiver;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/calendar/Utils;->getFirstDayOfWeekAsCalendar(Landroid/content/Context;)I

    move-result v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 191
    invoke-virtual/range {v20 .. v20}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iget-wide v8, v7, Lcom/android/calendar/time/Time;->gmtoff:J

    invoke-static {v4, v5, v8, v9}, Lcom/android/calendar/time/Time;->getJulianDay(JJ)I

    move-result v5

    .line 192
    :goto_1
    if-lt v10, v5, :cond_2

    .line 193
    const/4 v4, 0x3

    const/4 v5, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 194
    invoke-virtual/range {v20 .. v20}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iget-wide v8, v7, Lcom/android/calendar/time/Time;->gmtoff:J

    invoke-static {v4, v5, v8, v9}, Lcom/android/calendar/time/Time;->getJulianDay(JJ)I

    move-result v5

    goto :goto_1

    .line 197
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/calendar/widget/CalendarAppWidgetModel;->hasEventsToday()Z

    move-result v4

    if-nez v4, :cond_5

    .line 198
    new-instance v4, Lcom/android/calendar/widget/WidgetRow$NoEventsToday;

    .line 199
    invoke-virtual/range {p1 .. p1}, Lcom/android/calendar/widget/CalendarAppWidgetModel;->hadEventsToday()Z

    move-result v6

    invoke-direct {v4, v10, v7, v6, v11}, Lcom/android/calendar/widget/WidgetRow$NoEventsToday;-><init>(ILcom/android/calendar/time/Time;ZLcom/android/calendar/DateTimeFormatHelper;)V

    .line 198
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    add-int/lit8 v4, v10, 0x1

    .line 204
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/calendar/widget/CalendarAppWidgetModel;->getStorage()Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;

    move-result-object v21

    move v6, v4

    move v4, v5

    .line 205
    :goto_3
    move/from16 v0, v18

    if-gt v6, v0, :cond_1a

    .line 206
    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->getBirthday(I)Lcom/android/calendar/timely/TimelineBirthday;

    move-result-object v22

    .line 207
    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->getAllDayBuckets(I)Ljava/util/List;

    move-result-object v8

    .line 208
    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->getHolidayBuckets(I)Ljava/util/List;

    move-result-object v23

    .line 209
    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->getTimedBuckets(I)Ljava/util/List;

    move-result-object v24

    .line 210
    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->getAllDayTaskBuckets(I)Ljava/util/List;

    move-result-object v25

    .line 211
    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->getTimedTaskBuckets(I)Ljava/util/List;

    move-result-object v26

    .line 212
    if-eqz v22, :cond_6

    const/4 v5, 0x1

    move/from16 v17, v5

    .line 213
    :goto_4
    if-eqz v8, :cond_7

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    const/4 v5, 0x1

    move v9, v5

    .line 214
    :goto_5
    if-eqz v23, :cond_8

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    const/4 v5, 0x1

    move/from16 v16, v5

    .line 215
    :goto_6
    if-eqz v24, :cond_9

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    const/4 v5, 0x1

    move v15, v5

    .line 216
    :goto_7
    if-eqz v25, :cond_a

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a

    const/4 v5, 0x1

    move v14, v5

    .line 217
    :goto_8
    if-eqz v26, :cond_b

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    const/4 v5, 0x1

    move v13, v5

    .line 219
    :goto_9
    const/4 v5, 0x0

    .line 227
    if-nez v9, :cond_3

    if-nez v17, :cond_3

    if-nez v15, :cond_3

    if-nez v16, :cond_3

    if-nez v14, :cond_3

    if-eqz v13, :cond_13

    .line 229
    :cond_3
    if-le v6, v10, :cond_4

    .line 230
    new-instance v12, Lcom/android/calendar/widget/WidgetRow$DayDivider;

    invoke-direct {v12, v6, v7, v10, v11}, Lcom/android/calendar/widget/WidgetRow$DayDivider;-><init>(ILcom/android/calendar/time/Time;ILcom/android/calendar/DateTimeFormatHelper;)V

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    move v12, v4

    .line 232
    :goto_a
    if-lt v6, v12, :cond_c

    .line 233
    new-instance v12, Lcom/android/calendar/widget/WidgetRow$WeekDivider;

    invoke-virtual/range {v20 .. v20}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Calendar;

    move/from16 v0, v19

    invoke-direct {v12, v11, v4, v7, v0}, Lcom/android/calendar/widget/WidgetRow$WeekDivider;-><init>(Lcom/android/calendar/DateTimeFormatHelper;Ljava/util/Calendar;Lcom/android/calendar/time/Time;Z)V

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    const/4 v4, 0x3

    const/4 v12, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v12}, Ljava/util/Calendar;->add(II)V

    .line 236
    invoke-virtual/range {v20 .. v20}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v28

    iget-wide v0, v7, Lcom/android/calendar/time/Time;->gmtoff:J

    move-wide/from16 v30, v0

    invoke-static/range {v28 .. v31}, Lcom/android/calendar/time/Time;->getJulianDay(JJ)I

    move-result v4

    move v12, v4

    goto :goto_a

    .line 202
    :cond_5
    new-instance v4, Lcom/android/calendar/widget/WidgetRow$TopDivider;

    invoke-direct {v4}, Lcom/android/calendar/widget/WidgetRow$TopDivider;-><init>()V

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v10

    goto/16 :goto_2

    .line 212
    :cond_6
    const/4 v5, 0x0

    move/from16 v17, v5

    goto/16 :goto_4

    .line 213
    :cond_7
    const/4 v5, 0x0

    move v9, v5

    goto :goto_5

    .line 214
    :cond_8
    const/4 v5, 0x0

    move/from16 v16, v5

    goto :goto_6

    .line 215
    :cond_9
    const/4 v5, 0x0

    move v15, v5

    goto :goto_7

    .line 216
    :cond_a
    const/4 v5, 0x0

    move v14, v5

    goto :goto_8

    .line 217
    :cond_b
    const/4 v5, 0x0

    move v13, v5

    goto :goto_9

    .line 238
    :cond_c
    if-eqz v9, :cond_1d

    .line 240
    const/4 v9, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    invoke-direct/range {v4 .. v11}, Lcom/android/calendar/widget/WidgetDataReceiver;->addAll(Ljava/util/List;ILcom/android/calendar/time/Time;Ljava/util/List;ZILcom/android/calendar/DateTimeFormatHelper;)V

    .line 241
    const/4 v4, 0x1

    .line 243
    :goto_b
    if-eqz v14, :cond_d

    .line 245
    if-nez v4, :cond_e

    const/4 v9, 0x1

    :goto_c
    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v8, v25

    invoke-direct/range {v4 .. v11}, Lcom/android/calendar/widget/WidgetDataReceiver;->addAll(Ljava/util/List;ILcom/android/calendar/time/Time;Ljava/util/List;ZILcom/android/calendar/DateTimeFormatHelper;)V

    .line 247
    const/4 v4, 0x1

    .line 249
    :cond_d
    if-eqz v16, :cond_10

    .line 251
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v5, v4

    :goto_d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/calendar/timely/TimelineHoliday;

    .line 252
    new-instance v9, Lcom/android/calendar/widget/WidgetRow$HolidayChip;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/widget/WidgetDataReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v9, v14, v4, v11}, Lcom/android/calendar/widget/WidgetRow$HolidayChip;-><init>(Landroid/content/Context;Lcom/android/calendar/timely/TimelineHoliday;Lcom/android/calendar/DateTimeFormatHelper;)V

    .line 254
    if-nez v5, :cond_1c

    .line 255
    invoke-virtual {v9}, Lcom/android/calendar/widget/WidgetRow$HolidayChip;->setIsFirst()Lcom/android/calendar/widget/WidgetRow$Chip;

    .line 256
    const/4 v4, 0x1

    .line 258
    :goto_e
    invoke-virtual {v9, v10, v6, v7, v11}, Lcom/android/calendar/widget/WidgetRow$HolidayChip;->setDayInfo(IILcom/android/calendar/time/Time;Lcom/android/calendar/DateTimeFormatHelper;)Lcom/android/calendar/widget/WidgetRow$Chip;

    .line 259
    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v4

    .line 260
    goto :goto_d

    .line 245
    :cond_e
    const/4 v9, 0x0

    goto :goto_c

    :cond_f
    move v4, v5

    .line 263
    :cond_10
    if-eqz v17, :cond_12

    .line 264
    new-instance v5, Lcom/android/calendar/widget/WidgetRow$BirthdayChip;

    move-object/from16 v0, v22

    invoke-direct {v5, v0, v11}, Lcom/android/calendar/widget/WidgetRow$BirthdayChip;-><init>(Lcom/android/calendar/timely/TimelineBirthday;Lcom/android/calendar/DateTimeFormatHelper;)V

    .line 266
    if-nez v4, :cond_11

    .line 267
    invoke-virtual {v5}, Lcom/android/calendar/widget/WidgetRow$BirthdayChip;->setIsFirst()Lcom/android/calendar/widget/WidgetRow$Chip;

    .line 268
    const/4 v4, 0x1

    .line 270
    :cond_11
    invoke-virtual {v5, v10, v6, v7, v11}, Lcom/android/calendar/widget/WidgetRow$BirthdayChip;->setDayInfo(IILcom/android/calendar/time/Time;Lcom/android/calendar/DateTimeFormatHelper;)Lcom/android/calendar/widget/WidgetRow$Chip;

    .line 271
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    :cond_12
    if-eqz v15, :cond_15

    if-eqz v13, :cond_15

    .line 275
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/widget/WidgetDataReceiver;->mergeEventsAndTasks(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    if-nez v4, :cond_14

    const/4 v9, 0x1

    :goto_f
    move-object/from16 v4, p0

    move-object/from16 v5, p2

    invoke-direct/range {v4 .. v11}, Lcom/android/calendar/widget/WidgetDataReceiver;->addAll(Ljava/util/List;ILcom/android/calendar/time/Time;Ljava/util/List;ZILcom/android/calendar/DateTimeFormatHelper;)V

    move v4, v12

    .line 205
    :cond_13
    :goto_10
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 275
    :cond_14
    const/4 v9, 0x0

    goto :goto_f

    .line 277
    :cond_15
    if-eqz v15, :cond_17

    .line 279
    if-nez v4, :cond_16

    const/4 v9, 0x1

    :goto_11
    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v8, v24

    invoke-direct/range {v4 .. v11}, Lcom/android/calendar/widget/WidgetDataReceiver;->addAll(Ljava/util/List;ILcom/android/calendar/time/Time;Ljava/util/List;ZILcom/android/calendar/DateTimeFormatHelper;)V

    move v4, v12

    goto :goto_10

    :cond_16
    const/4 v9, 0x0

    goto :goto_11

    .line 280
    :cond_17
    if-eqz v13, :cond_18

    .line 282
    if-nez v4, :cond_19

    const/4 v9, 0x1

    :goto_12
    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v8, v26

    invoke-direct/range {v4 .. v11}, Lcom/android/calendar/widget/WidgetDataReceiver;->addAll(Ljava/util/List;ILcom/android/calendar/time/Time;Ljava/util/List;ZILcom/android/calendar/DateTimeFormatHelper;)V

    :cond_18
    move v4, v12

    goto :goto_10

    :cond_19
    const/4 v9, 0x0

    goto :goto_12

    .line 289
    :cond_1a
    new-instance v4, Lcom/android/calendar/widget/WidgetRow$Footer;

    invoke-direct {v4}, Lcom/android/calendar/widget/WidgetRow$Footer;-><init>()V

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x64

    if-le v4, v5, :cond_1b

    .line 291
    const-string v4, "CalendarWidget"

    const-string v5, ".... rowList.size: too large"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 293
    :cond_1b
    const-string v4, "CalendarWidget"

    const-string v5, ".... rowList.size:%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    :cond_1c
    move v4, v5

    goto/16 :goto_e

    :cond_1d
    move v4, v5

    goto/16 :goto_b
.end method

.method static getNextMidnightTimeMillis(JLjava/lang/String;)J
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 402
    new-instance v0, Lcom/android/calendar/time/Time;

    invoke-direct {v0}, Lcom/android/calendar/time/Time;-><init>()V

    .line 403
    invoke-virtual {v0, p0, p1}, Lcom/android/calendar/time/Time;->set(J)V

    .line 404
    iget v1, v0, Lcom/android/calendar/time/Time;->monthDay:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/calendar/time/Time;->monthDay:I

    .line 405
    iput v4, v0, Lcom/android/calendar/time/Time;->hour:I

    .line 406
    iput v4, v0, Lcom/android/calendar/time/Time;->minute:I

    .line 407
    iput v4, v0, Lcom/android/calendar/time/Time;->second:I

    .line 408
    invoke-virtual {v0, v5}, Lcom/android/calendar/time/Time;->normalize(Z)J

    move-result-wide v2

    .line 410
    iput-object p2, v0, Lcom/android/calendar/time/Time;->timezone:Ljava/lang/String;

    .line 411
    invoke-virtual {v0}, Lcom/android/calendar/time/Time;->setToNow()V

    .line 412
    iget v1, v0, Lcom/android/calendar/time/Time;->monthDay:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/calendar/time/Time;->monthDay:I

    .line 413
    iput v4, v0, Lcom/android/calendar/time/Time;->hour:I

    .line 414
    iput v4, v0, Lcom/android/calendar/time/Time;->minute:I

    .line 415
    iput v4, v0, Lcom/android/calendar/time/Time;->second:I

    .line 416
    invoke-virtual {v0, v5}, Lcom/android/calendar/time/Time;->normalize(Z)J

    move-result-wide v0

    .line 418
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private mergeEventsAndTasks(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/TimelineEvent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/task/TimelineTaskType;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/TimelineItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 298
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 299
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 300
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 301
    invoke-static {v0}, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->sortItemList(Ljava/util/List;)V

    .line 302
    return-object v0
.end method

.method private notifyWidgetsChanged()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 150
    iget-object v1, p0, Lcom/android/calendar/widget/WidgetDataReceiver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 151
    sget-boolean v2, Lcom/android/calendar/widget/WidgetDataReceiver;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 153
    :cond_0
    iget-object v2, p0, Lcom/android/calendar/widget/WidgetDataReceiver;->mContext:Landroid/content/Context;

    .line 154
    invoke-static {v2}, Lcom/android/calendar/widget/CalendarAppWidgetProvider;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2

    .line 153
    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    .line 156
    const-string v3, "CalendarWidget"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/android/calendarcommon2/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 157
    const-string v3, "CalendarWidget"

    const-string v4, "... notifyAppWidgetViewDataChanged -> %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 158
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 157
    invoke-static {v3, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 161
    :cond_1
    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_2

    aget v4, v2, v0

    .line 162
    iget-object v5, p0, Lcom/android/calendar/widget/WidgetDataReceiver;->mContext:Landroid/content/Context;

    invoke-static {v5, v1, v4}, Lcom/android/calendar/widget/CalendarAppWidgetProvider;->notifyWidgetDataChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_2
    return-void
.end method

.method private startRefreshData(Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 107
    new-instance v0, Lcom/android/calendar/widget/WidgetDataMachine;

    iget-object v1, p0, Lcom/android/calendar/widget/WidgetDataReceiver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/calendar/widget/WidgetDataReceiver;->mTimezone:Ljava/lang/String;

    new-instance v3, Lcom/android/calendar/widget/WidgetDataReceiver$2;

    invoke-direct {v3, p0, p1}, Lcom/android/calendar/widget/WidgetDataReceiver$2;-><init>(Lcom/android/calendar/widget/WidgetDataReceiver;Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/calendar/widget/WidgetDataMachine;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/calendar/widget/WidgetDataMachine$OnProcessCompleteListener;)V

    .line 133
    iget-object v1, p0, Lcom/android/calendar/widget/WidgetDataReceiver;->mWidgetLoaderManager:Lcom/android/calendar/widget/WidgetLoaderManager;

    iget-object v1, v1, Lcom/android/calendar/widget/WidgetLoaderManager;->mWidgetEventLoader:Lcom/android/calendar/widget/WidgetEventLoader;

    .line 134
    iget-object v2, p0, Lcom/android/calendar/widget/WidgetDataReceiver;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/calendar/Utils;->getHideDeclinedEvents(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/widget/WidgetEventLoader;->setHideDeclinedEvents(Z)V

    .line 135
    invoke-virtual {v0}, Lcom/android/calendar/widget/WidgetDataMachine;->getEndDay()I

    move-result v2

    invoke-virtual {v1, v0, v0, v2}, Lcom/android/calendar/widget/WidgetEventLoader;->startRefreshData(Lcom/android/calendar/widget/WidgetEventLoader$EventsProcessor;Lcom/android/calendar/timely/RangedData;I)V

    .line 136
    invoke-virtual {v0}, Lcom/android/calendar/widget/WidgetDataMachine;->getToken()I

    move-result v1

    if-gez v1, :cond_1

    .line 137
    const-string v0, "CalendarWidget"

    const-string v1, "Query dropped when:%d"

    new-array v2, v5, [Ljava/lang/Object;

    sget-object v3, Lcom/android/calendar/widget/CalendarAppWidgetService;->sCurrentVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 138
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 137
    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 139
    if-eqz p1, :cond_0

    .line 140
    invoke-virtual {p1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    const-string v1, "CalendarWidget"

    const-string v2, "started refresh data for %d when:%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/calendar/widget/WidgetDataMachine;->getToken()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    sget-object v0, Lcom/android/calendar/widget/CalendarAppWidgetService;->sCurrentVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 144
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    .line 143
    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/widget/WidgetDataReceiver;->mContext:Landroid/content/Context;

    .line 66
    const-string v0, "CalendarWidget"

    const-string v1, "Received intent: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 67
    invoke-static {p1}, Lcom/android/calendar/Utils;->hasMandatoryPermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/calendar/Utils;->isCalendarStorageEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/widget/WidgetDataReceiver;->notifyWidgetsChanged()V

    .line 69
    const-string v0, "CalendarWidget"

    const-string v1, "Exiting. Calendar permissions not granted or storage disabled."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/widget/WidgetDataReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/widget/CalendarAppWidgetService;->getLoaderManager(Landroid/content/Context;)Lcom/android/calendar/widget/WidgetLoaderManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/widget/WidgetDataReceiver;->mWidgetLoaderManager:Lcom/android/calendar/widget/WidgetLoaderManager;

    .line 74
    iget-object v0, p0, Lcom/android/calendar/widget/WidgetDataReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/calendar/widget/WidgetDataReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/calendar/widget/WidgetDataReceiver;->createRefreshDataRunnable(Landroid/content/BroadcastReceiver$PendingResult;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->loadTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
