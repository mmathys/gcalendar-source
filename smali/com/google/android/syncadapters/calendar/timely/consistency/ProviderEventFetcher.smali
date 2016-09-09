.class public Lcom/google/android/syncadapters/calendar/timely/consistency/ProviderEventFetcher;
.super Ljava/lang/Object;
.source "ProviderEventFetcher.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/google/api/services/calendar/model/Event;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final EVENT_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCalendarId:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mEndTimeMs:J

.field private mExecutedRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/client/util/GenericData;",
            ">;"
        }
    .end annotation
.end field

.field private final mNoLimit:Z

.field private final mStartTimeMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const-class v0, Lcom/google/android/syncadapters/calendar/timely/consistency/ProviderEventFetcher;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/consistency/ProviderEventFetcher;->TAG:Ljava/lang/String;

    .line 49
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_sync_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "eventStatus"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "event_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "organizer"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "rdate"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "exrule"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "exdate"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "eventTimezone"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "originalInstanceTime"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "title"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "description"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "begin"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "end"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "originalAllDay"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "original_sync_id"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "sync_data4 as sync_data4"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "dirty as dirty"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "sync_data5 as sync_data5"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "sync_data9 as sync_data9"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "sync_data8 as sync_data8"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/consistency/ProviderEventFetcher;->EVENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;JJZ)V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ProviderEventFetcher;->mContext:Landroid/content/Context;

    .line 111
    iput-object p2, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ProviderEventFetcher;->mCalendarId:Ljava/lang/String;

    .line 112
    iput-wide p3, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ProviderEventFetcher;->mStartTimeMs:J

    .line 113
    iput-wide p5, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ProviderEventFetcher;->mEndTimeMs:J

    .line 114
    iput-boolean p7, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ProviderEventFetcher;->mNoLimit:Z

    .line 115
    return-void
.end method

.method private buildEvent(Landroid/database/Cursor;)Lcom/google/api/services/calendar/model/Event;
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 256
    new-instance v6, Lcom/google/api/services/calendar/model/Event;

    invoke-direct {v6}, Lcom/google/api/services/calendar/model/Event;-><init>()V

    .line 258
    const-string v0, "event_id"

    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Lcom/google/api/services/calendar/model/Event;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/Event;

    .line 261
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/api/services/calendar/model/Event;->setId(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Event;

    .line 264
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 267
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 279
    sget-object v3, Lcom/google/android/syncadapters/calendar/timely/consistency/ProviderEventFetcher;->TAG:Ljava/lang/String;

    const-string v4, "Unexpected value for status: %d; using tentative."

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-static {v3, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 281
    const-string v0, "tentative"

    .line 284
    :goto_0
    invoke-virtual {v6, v0}, Lcom/google/api/services/calendar/model/Event;->setStatus(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Event;

    .line 288
    :cond_0
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 289
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/api/services/calendar/model/Event;->setSummary(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Event;

    .line 293
    :cond_1
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 294
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/api/services/calendar/model/Event;->setDescription(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Event;

    .line 299
    :cond_2
    const/16 v0, 0x15

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 300
    const/16 v0, 0x15

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 301
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 302
    invoke-virtual {v6, v7}, Lcom/google/api/services/calendar/model/Event;->setDescription(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Event;

    .line 308
    :cond_3
    const/16 v0, 0x16

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x16

    .line 309
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 310
    invoke-virtual {v6, v7}, Lcom/google/api/services/calendar/model/Event;->setDescription(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Event;

    .line 314
    :cond_4
    const/16 v0, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 315
    const/16 v0, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/api/services/calendar/model/Event;->setEtag(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Event;

    .line 319
    :cond_5
    invoke-interface {p1, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 320
    new-instance v0, Lcom/google/api/services/calendar/model/Event$Organizer;

    invoke-direct {v0}, Lcom/google/api/services/calendar/model/Event$Organizer;-><init>()V

    .line 321
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 322
    invoke-virtual {v0, v3}, Lcom/google/api/services/calendar/model/Event$Organizer;->setEmail(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Event$Organizer;

    .line 323
    invoke-virtual {v6, v0}, Lcom/google/api/services/calendar/model/Event;->setOrganizer(Lcom/google/api/services/calendar/model/Event$Organizer;)Lcom/google/api/services/calendar/model/Event;

    .line 327
    :cond_6
    invoke-interface {p1, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 328
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-virtual {v6, v0}, Lcom/google/api/services/calendar/model/Event;->setLocation(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Event;

    .line 332
    :cond_7
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_d

    move v0, v1

    .line 335
    :goto_1
    new-instance v3, Lcom/android/calendarcommon2/ICalendar$Component;

    const-string v4, "DUMMY"

    invoke-direct {v3, v4, v7}, Lcom/android/calendarcommon2/ICalendar$Component;-><init>(Ljava/lang/String;Lcom/android/calendarcommon2/ICalendar$Component;)V

    .line 337
    const-string v4, "RRULE"

    const/4 v5, 0x6

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/calendarcommon2/RecurrenceSet;->addPropertiesForRuleStr(Lcom/android/calendarcommon2/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v4, "RDATE"

    const/4 v5, 0x7

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/calendarcommon2/RecurrenceSet;->addPropertyForDateStr(Lcom/android/calendarcommon2/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v4, "EXRULE"

    const/16 v5, 0x8

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/calendarcommon2/RecurrenceSet;->addPropertiesForRuleStr(Lcom/android/calendarcommon2/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const-string v4, "EXDATE"

    const/16 v5, 0x9

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/calendarcommon2/RecurrenceSet;->addPropertyForDateStr(Lcom/android/calendarcommon2/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-virtual {v3}, Lcom/android/calendarcommon2/ICalendar$Component;->getPropertyNames()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_e

    .line 342
    invoke-static {v3, v6}, Lcom/google/android/syncadapters/calendar/EventHandler;->addRecurrenceToEntry(Lcom/android/calendarcommon2/ICalendar$Component;Lcom/google/api/services/calendar/model/Event;)V

    move v3, v1

    .line 348
    :goto_2
    const/16 v4, 0xa

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 350
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 351
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    move v4, v2

    .line 358
    :goto_3
    invoke-static {p1, v4, v5, v0}, Lcom/google/android/syncadapters/calendar/timely/consistency/ProviderEventFetcher;->extractStartTimeFromCursor(Landroid/database/Cursor;ZLjava/lang/String;Z)Lcom/google/api/services/calendar/model/EventDateTime;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/api/services/calendar/model/Event;->setStart(Lcom/google/api/services/calendar/model/EventDateTime;)Lcom/google/api/services/calendar/model/Event;

    .line 361
    invoke-static {p1, v4, v5, v0}, Lcom/google/android/syncadapters/calendar/timely/consistency/ProviderEventFetcher;->extractEndTimeFromCursor(Landroid/database/Cursor;ZLjava/lang/String;Z)Lcom/google/api/services/calendar/model/EventDateTime;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/api/services/calendar/model/Event;->setEnd(Lcom/google/api/services/calendar/model/EventDateTime;)Lcom/google/api/services/calendar/model/Event;

    .line 364
    const-wide/16 v4, -0x1

    .line 365
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 366
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 369
    :cond_8
    const-wide/16 v8, -0x1

    cmp-long v0, v4, v8

    if-eqz v0, :cond_10

    move v0, v1

    .line 372
    :goto_4
    if-nez v0, :cond_9

    if-eqz v3, :cond_a

    .line 373
    :cond_9
    const/16 v7, 0x11

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/api/services/calendar/model/Event;->setRecurringEventId(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Event;

    .line 374
    invoke-virtual {v6}, Lcom/google/api/services/calendar/model/Event;->getRecurringEventId()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_a

    .line 375
    invoke-virtual {v6}, Lcom/google/api/services/calendar/model/Event;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/api/services/calendar/model/Event;->setRecurringEventId(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Event;

    .line 379
    :cond_a
    if-eqz v0, :cond_12

    .line 380
    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_11

    .line 381
    :goto_5
    invoke-static {v4, v5, v1}, Lcom/google/android/syncadapters/calendar/timely/consistency/ProviderEventFetcher;->createEventDateTime(JZ)Lcom/google/api/services/calendar/model/EventDateTime;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/api/services/calendar/model/Event;->setOriginalStartTime(Lcom/google/api/services/calendar/model/EventDateTime;)Lcom/google/api/services/calendar/model/Event;

    .line 386
    :cond_b
    :goto_6
    const-string v0, "dirty"

    const/16 v1, 0x13

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/google/api/services/calendar/model/Event;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/Event;

    .line 389
    const/16 v0, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 390
    const/16 v0, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 391
    invoke-static {v0}, Lcom/google/api/client/util/DateTime;->parseRfc3339(Ljava/lang/String;)Lcom/google/api/client/util/DateTime;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/api/services/calendar/model/Event;->setUpdated(Lcom/google/api/client/util/DateTime;)Lcom/google/api/services/calendar/model/Event;

    .line 394
    :cond_c
    return-object v6

    .line 269
    :pswitch_0
    const-string v0, "cancelled"

    goto/16 :goto_0

    .line 272
    :pswitch_1
    const-string v0, "confirmed"

    goto/16 :goto_0

    .line 275
    :pswitch_2
    const-string v0, "tentative"

    goto/16 :goto_0

    :cond_d
    move v0, v2

    .line 332
    goto/16 :goto_1

    :cond_e
    move v3, v2

    .line 345
    goto/16 :goto_2

    :cond_f
    move-object v5, v4

    move v4, v1

    .line 354
    goto/16 :goto_3

    :cond_10
    move v0, v2

    .line 369
    goto :goto_4

    :cond_11
    move v1, v2

    .line 380
    goto :goto_5

    .line 382
    :cond_12
    if-eqz v3, :cond_b

    .line 383
    invoke-virtual {v6}, Lcom/google/api/services/calendar/model/Event;->getStart()Lcom/google/api/services/calendar/model/EventDateTime;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/api/services/calendar/model/Event;->setOriginalStartTime(Lcom/google/api/services/calendar/model/EventDateTime;)Lcom/google/api/services/calendar/model/Event;

    goto :goto_6

    .line 267
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static createEventDateTime(JZ)Lcom/google/api/services/calendar/model/EventDateTime;
    .locals 4

    .prologue
    .line 408
    new-instance v0, Lcom/google/api/services/calendar/model/EventDateTime;

    invoke-direct {v0}, Lcom/google/api/services/calendar/model/EventDateTime;-><init>()V

    .line 409
    if-eqz p2, :cond_0

    .line 410
    new-instance v1, Lcom/google/api/client/util/DateTime;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, p1, v3}, Lcom/google/api/client/util/DateTime;-><init>(ZJLjava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/google/api/services/calendar/model/EventDateTime;->setDate(Lcom/google/api/client/util/DateTime;)Lcom/google/api/services/calendar/model/EventDateTime;

    .line 414
    :goto_0
    return-object v0

    .line 412
    :cond_0
    new-instance v1, Lcom/google/api/client/util/DateTime;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/google/api/client/util/DateTime;-><init>(JI)V

    invoke-virtual {v0, v1}, Lcom/google/api/services/calendar/model/EventDateTime;->setDateTime(Lcom/google/api/client/util/DateTime;)Lcom/google/api/services/calendar/model/EventDateTime;

    goto :goto_0
.end method

.method private static extractEndTimeFromCursor(Landroid/database/Cursor;ZLjava/lang/String;Z)Lcom/google/api/services/calendar/model/EventDateTime;
    .locals 1

    .prologue
    .line 425
    const/16 v0, 0xf

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/syncadapters/calendar/timely/consistency/ProviderEventFetcher;->extractTimeFromCursor(Landroid/database/Cursor;IZLjava/lang/String;Z)Lcom/google/api/services/calendar/model/EventDateTime;

    move-result-object v0

    return-object v0
.end method

.method private static extractStartTimeFromCursor(Landroid/database/Cursor;ZLjava/lang/String;Z)Lcom/google/api/services/calendar/model/EventDateTime;
    .locals 1

    .prologue
    .line 419
    const/16 v0, 0xe

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/syncadapters/calendar/timely/consistency/ProviderEventFetcher;->extractTimeFromCursor(Landroid/database/Cursor;IZLjava/lang/String;Z)Lcom/google/api/services/calendar/model/EventDateTime;

    move-result-object v0

    return-object v0
.end method

.method private static extractTimeFromCursor(Landroid/database/Cursor;IZLjava/lang/String;Z)Lcom/google/api/services/calendar/model/EventDateTime;
    .locals 2

    .prologue
    .line 432
    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 433
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 434
    invoke-static {v0, v1, p4}, Lcom/google/android/syncadapters/calendar/timely/consistency/ProviderEventFetcher;->createEventDateTime(JZ)Lcom/google/api/services/calendar/model/EventDateTime;

    move-result-object v0

    .line 435
    if-eqz p2, :cond_0

    .line 436
    invoke-virtual {v0, p3}, Lcom/google/api/services/calendar/model/EventDateTime;->setTimeZone(Ljava/lang/String;)Lcom/google/api/services/calendar/model/EventDateTime;

    .line 440
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getExtendedPropertiesCursor(Landroid/content/ContentProviderClient;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 231
    if-nez p2, :cond_0

    .line 245
    :goto_0
    return-object v5

    .line 234
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 235
    const/4 v0, -0x1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 236
    :goto_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    const/4 v0, 0x2

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 239
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    const-string v0, "?"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v2

    .line 241
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 242
    const-string v1, ", ?"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 244
    :cond_2
    const-string v0, "cc:mark"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    sget-object v1, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v2, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v6, "event_id"

    aput-object v6, v2, v0

    const-string v0, "event_id IN ("

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 248
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "name"

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0xa

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ") AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " = ?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 250
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    move-object v0, p1

    .line 245
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto/16 :goto_0
.end method

.method private getQueryUri()Landroid/net/Uri;
    .locals 6

    .prologue
    .line 398
    sget-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 402
    iget-wide v2, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ProviderEventFetcher;->mStartTimeMs:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 403
    iget-wide v2, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ProviderEventFetcher;->mEndTimeMs:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 404
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private isOverfetchedFromProvider(Landroid/database/Cursor;)Z
    .locals 8

    .prologue
    const/16 v4, 0xf

    const/16 v2, 0xe

    const/4 v0, 0x0

    .line 444
    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 458
    :cond_0
    :goto_0
    return v0

    .line 447
    :cond_1
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 448
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 458
    iget-wide v6, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ProviderEventFetcher;->mStartTimeMs:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/timely/consistency/ProviderEventFetcher;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/Event;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 133
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ProviderEventFetcher;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->checkRuntimePermissions(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/consistency/ProviderEventFetcher;->TAG:Ljava/lang/String;

    const-string v1, "Insufficient permissions"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v6

    .line 216
    :goto_0
    return-object v0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ProviderEventFetcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.android.calendar"

    .line 139
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 141
    if-nez v0, :cond_1

    .line 142
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/consistency/ProviderEventFetcher;->TAG:Ljava/lang/String;

    const-string v1, "Failed to acquire content provider client"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v6

    .line 143
    goto :goto_0

    .line 146
    :cond_1
    new-array v4, v2, [Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ProviderEventFetcher;->mCalendarId:Ljava/lang/String;

    aput-object v1, v4, v7

    .line 150
    new-instance v8, Lcom/google/android/calendar/builders/ListBuilder;

    invoke-direct {v8}, Lcom/google/android/calendar/builders/ListBuilder;-><init>()V

    .line 156
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/syncadapters/calendar/timely/consistency/ProviderEventFetcher;->getQueryUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/syncadapters/calendar/timely/consistency/ProviderEventFetcher;->EVENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "ownerAccount = ?"

    const/4 v5, 0x0

    .line 155
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v5

    .line 162
    :try_start_1
    new-instance v1, Lcom/google/api/client/util/GenericData;

    invoke-direct {v1}, Lcom/google/api/client/util/GenericData;-><init>()V

    .line 163
    const-string v2, "uri"

    invoke-direct {p0}, Lcom/google/android/syncadapters/calendar/timely/consistency/ProviderEventFetcher;->getQueryUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/api/client/util/GenericData;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;

    .line 164
    const-string v2, "projection"

    sget-object v3, Lcom/google/android/syncadapters/calendar/timely/consistency/ProviderEventFetcher;->EVENT_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/api/client/util/GenericData;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;

    .line 165
    const-string v2, "selection"

    const-string v3, "ownerAccount = ?"

    invoke-virtual {v1, v2, v3}, Lcom/google/api/client/util/GenericData;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;

    .line 166
    const-string v2, "selectionArgs"

    invoke-virtual {v1, v2, v4}, Lcom/google/api/client/util/GenericData;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;

    .line 167
    invoke-virtual {v8, v1}, Lcom/google/android/calendar/builders/ListBuilder;->add(Ljava/lang/Object;)Lcom/google/android/calendar/builders/ListBuilder;

    .line 169
    invoke-direct {p0, v0, v5}, Lcom/google/android/syncadapters/calendar/timely/consistency/ProviderEventFetcher;->getExtendedPropertiesCursor(Landroid/content/ContentProviderClient;Landroid/database/Cursor;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v3

    .line 171
    if-eqz v5, :cond_2

    if-nez v3, :cond_5

    .line 172
    :cond_2
    :try_start_2
    sget-object v1, Lcom/google/android/syncadapters/calendar/timely/consistency/ProviderEventFetcher;->TAG:Ljava/lang/String;

    const-string v2, "Null cursor while fetching events for %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v9, Lcom/google/android/syncadapters/calendar/timely/consistency/ProviderEventFetcher;->TAG:Ljava/lang/String;

    iget-object v10, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ProviderEventFetcher;->mCalendarId:Ljava/lang/String;

    .line 173
    invoke-static {v9, v10}, Lcom/android/calendarcommon2/LogUtils;->sanitizeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v7

    .line 172
    invoke-static {v1, v2, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 218
    if-eqz v5, :cond_3

    .line 219
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 221
    :cond_3
    if-eqz v3, :cond_4

    .line 222
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 224
    :cond_4
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 225
    invoke-virtual {v8}, Lcom/google/android/calendar/builders/ListBuilder;->buildImmutable()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ProviderEventFetcher;->mExecutedRequests:Ljava/util/List;

    move-object v0, v6

    .line 174
    goto/16 :goto_0

    .line 177
    :cond_5
    :try_start_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 179
    const/4 v1, -0x1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 180
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 181
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 182
    const/4 v1, 0x0

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 213
    :catch_0
    move-exception v1

    move-object v2, v3

    move-object v3, v5

    .line 214
    :goto_2
    :try_start_4
    sget-object v4, Lcom/google/android/syncadapters/calendar/timely/consistency/ProviderEventFetcher;->TAG:Ljava/lang/String;

    const-string v5, "Exception while fetching events for %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget-object v10, Lcom/google/android/syncadapters/calendar/timely/consistency/ProviderEventFetcher;->TAG:Ljava/lang/String;

    iget-object v11, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ProviderEventFetcher;->mCalendarId:Ljava/lang/String;

    .line 215
    invoke-static {v10, v11}, Lcom/android/calendarcommon2/LogUtils;->sanitizeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    .line 214
    invoke-static {v4, v1, v5, v7}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 218
    if-eqz v3, :cond_6

    .line 219
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 221
    :cond_6
    if-eqz v2, :cond_7

    .line 222
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 224
    :cond_7
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 225
    invoke-virtual {v8}, Lcom/google/android/calendar/builders/ListBuilder;->buildImmutable()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ProviderEventFetcher;->mExecutedRequests:Ljava/util/List;

    move-object v0, v6

    .line 216
    goto/16 :goto_0

    .line 185
    :cond_8
    const/4 v1, -0x1

    :try_start_5
    invoke-interface {v5, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move v4, v7

    .line 188
    :cond_9
    :goto_3
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 189
    const/4 v1, 0x0

    invoke-interface {v5, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 190
    sget-object v1, Lcom/google/android/syncadapters/calendar/timely/consistency/ProviderEventFetcher;->TAG:Ljava/lang/String;

    const-string v7, "Fetched object with null id from the server."

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v1, v7, v10}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 218
    :catchall_0
    move-exception v1

    :goto_4
    if-eqz v5, :cond_a

    .line 219
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 221
    :cond_a
    if-eqz v3, :cond_b

    .line 222
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 224
    :cond_b
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 225
    invoke-virtual {v8}, Lcom/google/android/calendar/builders/ListBuilder;->buildImmutable()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ProviderEventFetcher;->mExecutedRequests:Ljava/util/List;

    throw v1

    .line 197
    :cond_c
    :try_start_6
    invoke-direct {p0, v5}, Lcom/google/android/syncadapters/calendar/timely/consistency/ProviderEventFetcher;->isOverfetchedFromProvider(Landroid/database/Cursor;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 201
    invoke-direct {p0, v5}, Lcom/google/android/syncadapters/calendar/timely/consistency/ProviderEventFetcher;->buildEvent(Landroid/database/Cursor;)Lcom/google/api/services/calendar/model/Event;

    move-result-object v7

    .line 202
    const-string v1, "event_id"

    invoke-virtual {v7, v1}, Lcom/google/api/services/calendar/model/Event;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 203
    const-string v10, "cc:mark"

    invoke-interface {v9, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v7, v10, v1}, Lcom/google/api/services/calendar/model/Event;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/Event;

    .line 204
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    add-int/lit8 v1, v4, 0x1

    .line 206
    iget-boolean v4, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ProviderEventFetcher;->mNoLimit:Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v4, :cond_f

    const/16 v4, 0x190

    if-lt v1, v4, :cond_f

    .line 218
    if-eqz v5, :cond_d

    .line 219
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 221
    :cond_d
    if-eqz v3, :cond_e

    .line 222
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 224
    :cond_e
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 225
    invoke-virtual {v8}, Lcom/google/android/calendar/builders/ListBuilder;->buildImmutable()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ProviderEventFetcher;->mExecutedRequests:Ljava/util/List;

    move-object v0, v6

    .line 208
    goto/16 :goto_0

    :cond_f
    move v4, v1

    .line 210
    goto :goto_3

    .line 218
    :cond_10
    if-eqz v5, :cond_11

    .line 219
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 221
    :cond_11
    if-eqz v3, :cond_12

    .line 222
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 224
    :cond_12
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 225
    invoke-virtual {v8}, Lcom/google/android/calendar/builders/ListBuilder;->buildImmutable()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ProviderEventFetcher;->mExecutedRequests:Ljava/util/List;

    move-object v0, v2

    .line 212
    goto/16 :goto_0

    .line 218
    :catchall_1
    move-exception v1

    move-object v3, v6

    move-object v5, v6

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v3, v6

    goto :goto_4

    :catchall_3
    move-exception v1

    move-object v5, v3

    move-object v3, v2

    goto :goto_4

    .line 213
    :catch_1
    move-exception v1

    move-object v2, v6

    move-object v3, v6

    goto/16 :goto_2

    :catch_2
    move-exception v1

    move-object v2, v6

    move-object v3, v5

    goto/16 :goto_2
.end method

.method public getExecutedRequests()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/client/util/GenericData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ProviderEventFetcher;->mExecutedRequests:Ljava/util/List;

    return-object v0
.end method
