.class public Lcom/google/android/calendar/ical/ICalUtils;
.super Ljava/lang/Object;
.source "ICalUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/ical/ICalUtils$LocalEventInfoProvider;,
        Lcom/google/android/calendar/ical/ICalUtils$WritableCalendarsMapContainer;
    }
.end annotation


# static fields
.field private static final ESCAPE_LONG:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ESCAPE_STRING:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENTS_WITH_SYNC_DATA_INDEX_ORIGINAL_INSTANCE_TIME:I

.field public static final EVENTS_WITH_SYNC_DATA_INDEX_SELF_STATUS:I

.field public static final EVENTS_WITH_SYNC_DATA_INDEX_SEQUENCE:I

.field public static final EVENTS_WITH_SYNC_DATA_INDEX_UID:I

.field public static final EVENTS_WITH_SYNC_DATA_PROJECTION:[Ljava/lang/String;

.field public static final EXTENDED_PROPERTIES_PROJECTION:[Ljava/lang/String;

.field public static final ICAL_ATTENDEES_PROJECTION:[Ljava/lang/String;

.field public static final ICAL_CALENDARS_MAP_CONTAINER_TAG:Ljava/lang/String;

.field public static final ICAL_EVENTS_PROJECTION:[Ljava/lang/String;

.field public static final ICAL_LOCAL_EVENT_INFO_PROVIDER_TAG:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v3, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 58
    const-class v0, Lcom/google/android/calendar/ical/ICalUtils;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/ical/ICalUtils;->TAG:Ljava/lang/String;

    .line 61
    sget-object v0, Lcom/google/android/calendar/ical/ICalControllerFragment;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/google/android/calendar/ical/ICalUtils;->ICAL_LOCAL_EVENT_INFO_PROVIDER_TAG:Ljava/lang/String;

    .line 62
    sget-object v0, Lcom/google/android/calendar/ical/ICalControllerFragment;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/google/android/calendar/ical/ICalUtils;->ICAL_CALENDARS_MAP_CONTAINER_TAG:Ljava/lang/String;

    .line 67
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "description"

    aput-object v1, v0, v5

    const-string v1, "dtstart"

    aput-object v1, v0, v6

    const-string v1, "dtend"

    aput-object v1, v0, v7

    const-string v1, "allDay"

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "organizer"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "sequence"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "method"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "dtstamp"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "originalInstanceTime"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/calendar/ical/ICalUtils;->ICAL_EVENTS_PROJECTION:[Ljava/lang/String;

    .line 99
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "attendeeName"

    aput-object v1, v0, v4

    const-string v1, "attendeeEmail"

    aput-object v1, v0, v5

    const-string v1, "attendeeStatus"

    aput-object v1, v0, v6

    const-string v1, "attendeeRelationship"

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/android/calendar/ical/ICalUtils;->ICAL_ATTENDEES_PROJECTION:[Ljava/lang/String;

    .line 115
    const-class v0, Ljava/lang/String;

    sget-object v1, Lcom/android/calendar/event/LoadDetailsConstants;->EVENT_PROJECTION:[Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "originalInstanceTime"

    aput-object v3, v2, v4

    const-string v3, "selfAttendeeStatus"

    aput-object v3, v2, v5

    const-string v3, "sync_data1"

    aput-object v3, v2, v6

    const-string v3, "sync_data2"

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/google/android/calendar/builders/ArrayBuilder;->concat(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/calendar/ical/ICalUtils;->EVENTS_WITH_SYNC_DATA_PROJECTION:[Ljava/lang/String;

    .line 123
    sget-object v0, Lcom/google/android/calendar/ical/ICalUtils;->EVENTS_WITH_SYNC_DATA_PROJECTION:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x4

    sput v0, Lcom/google/android/calendar/ical/ICalUtils;->EVENTS_WITH_SYNC_DATA_INDEX_ORIGINAL_INSTANCE_TIME:I

    .line 125
    sget-object v0, Lcom/google/android/calendar/ical/ICalUtils;->EVENTS_WITH_SYNC_DATA_PROJECTION:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x3

    sput v0, Lcom/google/android/calendar/ical/ICalUtils;->EVENTS_WITH_SYNC_DATA_INDEX_SELF_STATUS:I

    .line 127
    sget-object v0, Lcom/google/android/calendar/ical/ICalUtils;->EVENTS_WITH_SYNC_DATA_PROJECTION:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x2

    sput v0, Lcom/google/android/calendar/ical/ICalUtils;->EVENTS_WITH_SYNC_DATA_INDEX_UID:I

    .line 129
    sget-object v0, Lcom/google/android/calendar/ical/ICalUtils;->EVENTS_WITH_SYNC_DATA_PROJECTION:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/google/android/calendar/ical/ICalUtils;->EVENTS_WITH_SYNC_DATA_INDEX_SEQUENCE:I

    .line 136
    new-instance v0, Lcom/google/android/calendar/ical/ICalUtils$1;

    invoke-direct {v0}, Lcom/google/android/calendar/ical/ICalUtils$1;-><init>()V

    sput-object v0, Lcom/google/android/calendar/ical/ICalUtils;->ESCAPE_LONG:Lcom/google/common/base/Function;

    .line 143
    new-instance v0, Lcom/google/android/calendar/ical/ICalUtils$2;

    invoke-direct {v0}, Lcom/google/android/calendar/ical/ICalUtils$2;-><init>()V

    sput-object v0, Lcom/google/android/calendar/ical/ICalUtils;->ESCAPE_STRING:Lcom/google/common/base/Function;

    .line 198
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "event_id"

    aput-object v1, v0, v4

    const-string v1, "name"

    aput-object v1, v0, v5

    const-string v1, "value"

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/calendar/ical/ICalUtils;->EXTENDED_PROPERTIES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAttendeesFromICalCursor(Lcom/android/calendar/event/CalendarEventModel;Landroid/database/Cursor;)Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 541
    if-nez p0, :cond_0

    .line 542
    sget-object v0, Lcom/google/android/calendar/ical/ICalUtils;->TAG:Ljava/lang/String;

    const-string v2, "Null CalendarEventModel provided!"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 577
    :goto_0
    return v1

    .line 545
    :cond_0
    if-nez p1, :cond_1

    .line 546
    sget-object v0, Lcom/google/android/calendar/ical/ICalUtils;->TAG:Ljava/lang/String;

    const-string v2, "Invalid attendees Cursor!"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 550
    :cond_1
    const/4 v0, -0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move v0, v1

    .line 551
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 552
    add-int/lit8 v0, v0, 0x1

    .line 553
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 554
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 557
    const/4 v5, 0x2

    .line 558
    :try_start_0
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 557
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 565
    const/4 v6, 0x3

    .line 566
    :try_start_1
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 565
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    .line 571
    new-instance v7, Lcom/android/calendar/event/CalendarEventModel$Attendee;

    invoke-direct {v7, v3, v4, v5, v6}, Lcom/android/calendar/event/CalendarEventModel$Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 573
    invoke-virtual {p0, v7}, Lcom/android/calendar/event/CalendarEventModel;->addAttendee(Lcom/android/calendar/event/CalendarEventModel$Attendee;)V

    goto :goto_1

    .line 559
    :catch_0
    move-exception v3

    .line 560
    sget-object v3, Lcom/google/android/calendar/ical/ICalUtils;->TAG:Ljava/lang/String;

    const-string v4, "Unable to retrieve attendee status"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 567
    :catch_1
    move-exception v3

    .line 568
    sget-object v3, Lcom/google/android/calendar/ical/ICalUtils;->TAG:Ljava/lang/String;

    const-string v4, "Unable to retrieve attendee relationship"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 576
    :cond_2
    iput v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mNumOfAttendees:I

    move v1, v2

    .line 577
    goto :goto_0
.end method

.method public static chooseBestModel(Ljava/util/Collection;Ljava/util/Map;)Lcom/android/calendar/event/CalendarEventModel;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/calendar/event/CalendarEventModel;",
            ">;)",
            "Lcom/android/calendar/event/CalendarEventModel;"
        }
    .end annotation

    .prologue
    .line 309
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 310
    const/4 v0, 0x0

    .line 318
    :goto_0
    return-object v0

    .line 312
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    .line 313
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/event/data/AndroidCalendarKey;

    .line 314
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->isPrimary()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getCalendarId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    invoke-interface {v1}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getCalendarId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/CalendarEventModel;

    goto :goto_0

    .line 318
    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/CalendarEventModel;

    goto :goto_0
.end method

.method public static compareModelToOriginal(Lcom/android/calendar/event/CalendarEventModel;Lcom/android/calendar/event/CalendarEventModel;)I
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    const/4 v2, 0x7

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 423
    const/4 v3, 0x5

    .line 424
    iget v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mSequence:I

    iget v5, p1, Lcom/android/calendar/event/CalendarEventModel;->mSequence:I

    if-ge v4, v5, :cond_1

    move v3, v2

    .line 459
    :cond_0
    :goto_0
    if-ne v3, v1, :cond_c

    .line 460
    iget-wide v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mICalDtStamp:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_c

    iget-wide v4, p1, Lcom/android/calendar/event/CalendarEventModel;->mICalDtStamp:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_c

    .line 461
    iget-wide v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mICalDtStamp:J

    iget-wide v6, p1, Lcom/android/calendar/event/CalendarEventModel;->mICalDtStamp:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_a

    .line 469
    :goto_1
    return v0

    .line 426
    :cond_1
    iget v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mSequence:I

    iget v5, p1, Lcom/android/calendar/event/CalendarEventModel;->mSequence:I

    if-le v4, v5, :cond_2

    move v3, v0

    .line 427
    goto :goto_0

    .line 428
    :cond_2
    iget-object v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mTitle:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/calendar/Utils;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/android/calendar/event/CalendarEventModel;->mTitle:Ljava/lang/String;

    .line 429
    invoke-static {v5}, Lcom/android/calendar/Utils;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 428
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    move v3, v1

    .line 430
    goto :goto_0

    .line 431
    :cond_3
    iget-object v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mDescription:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/calendar/Utils;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/android/calendar/event/CalendarEventModel;->mDescription:Ljava/lang/String;

    .line 432
    invoke-static {v5}, Lcom/android/calendar/Utils;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 431
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    move v3, v1

    .line 433
    goto :goto_0

    .line 434
    :cond_4
    iget-wide v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mStart:J

    iget-wide v6, p1, Lcom/android/calendar/event/CalendarEventModel;->mStart:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5

    move v3, v1

    .line 435
    goto :goto_0

    .line 436
    :cond_5
    iget-wide v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mEnd:J

    invoke-static {p1}, Lcom/google/android/calendar/ical/ICalUtils;->getEndDateFromModel(Lcom/android/calendar/event/CalendarEventModel;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_6

    move v3, v1

    .line 437
    goto :goto_0

    .line 438
    :cond_6
    iget-object v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mLocation:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/calendar/Utils;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/android/calendar/event/CalendarEventModel;->mLocation:Ljava/lang/String;

    .line 439
    invoke-static {v5}, Lcom/android/calendar/Utils;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 438
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    move v3, v1

    .line 440
    goto/16 :goto_0

    .line 441
    :cond_7
    iget-object v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mRrule:Ljava/lang/String;

    if-nez v4, :cond_8

    .line 442
    iget-object v4, p1, Lcom/android/calendar/event/CalendarEventModel;->mRrule:Ljava/lang/String;

    if-eqz v4, :cond_0

    move v3, v1

    .line 443
    goto/16 :goto_0

    .line 446
    :cond_8
    iget-object v4, p1, Lcom/android/calendar/event/CalendarEventModel;->mRrule:Ljava/lang/String;

    if-nez v4, :cond_9

    move v3, v1

    .line 447
    goto/16 :goto_0

    .line 449
    :cond_9
    new-instance v4, Lcom/android/calendarcommon2/EventRecurrence;

    invoke-direct {v4}, Lcom/android/calendarcommon2/EventRecurrence;-><init>()V

    .line 450
    iget-object v5, p0, Lcom/android/calendar/event/CalendarEventModel;->mRrule:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/calendarcommon2/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 451
    new-instance v5, Lcom/android/calendarcommon2/EventRecurrence;

    invoke-direct {v5}, Lcom/android/calendarcommon2/EventRecurrence;-><init>()V

    .line 452
    iget-object v6, p1, Lcom/android/calendar/event/CalendarEventModel;->mRrule:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/calendarcommon2/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 453
    invoke-virtual {v4, v5}, Lcom/android/calendarcommon2/EventRecurrence;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move v3, v1

    .line 454
    goto/16 :goto_0

    .line 464
    :cond_a
    iget-wide v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mICalDtStamp:J

    iget-wide v6, p1, Lcom/android/calendar/event/CalendarEventModel;->mICalDtStamp:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_b

    move v0, v1

    goto/16 :goto_1

    :cond_b
    move v0, v2

    .line 465
    goto/16 :goto_1

    :cond_c
    move v0, v3

    goto/16 :goto_1
.end method

.method public static completeModelFromOriginal(Lcom/android/calendar/event/CalendarEventModel;Lcom/android/calendar/event/CalendarEventModel;)V
    .locals 4

    .prologue
    .line 246
    iget-wide v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mId:J

    iput-wide v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mId:J

    .line 247
    iget-wide v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarId:J

    iput-wide v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarId:J

    .line 248
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccountName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccountName:Ljava/lang/String;

    .line 249
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccountType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccountType:Ljava/lang/String;

    .line 250
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    .line 251
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    .line 252
    iget-boolean v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mIsOrganizer:Z

    iput-boolean v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mIsOrganizer:Z

    .line 253
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mUri:Ljava/lang/String;

    .line 254
    iget-wide v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mDbStart:J

    iput-wide v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mDbStart:J

    .line 255
    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalTime:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 257
    :cond_0
    iget-wide v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mStart:J

    iput-wide v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalStart:J

    .line 258
    iget-wide v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mEnd:J

    iput-wide v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalEnd:J

    .line 264
    :goto_0
    iget v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mSequence:I

    iget v1, p1, Lcom/android/calendar/event/CalendarEventModel;->mSequence:I

    if-ne v0, v1, :cond_2

    .line 265
    iget v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAttendeeStatus:I

    iput v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAttendeeStatus:I

    .line 269
    :goto_1
    return-void

    .line 261
    :cond_1
    iget-wide v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mEnd:J

    iget-wide v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mStart:J

    sub-long/2addr v0, v2

    .line 262
    iget-wide v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalStart:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalEnd:J

    goto :goto_0

    .line 267
    :cond_2
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAttendeeStatus:I

    goto :goto_1
.end method

.method public static deleteEvent(Landroid/content/Context;Lcom/android/calendar/event/CalendarEventModel;Lcom/android/calendar/event/CalendarEventModel;)Z
    .locals 4

    .prologue
    .line 341
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mOriginalTime:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 342
    const/4 v0, 0x2

    .line 344
    :goto_0
    new-instance v1, Lcom/android/calendar/DeleteEventHelper;

    invoke-direct {v1, p0}, Lcom/android/calendar/DeleteEventHelper;-><init>(Landroid/content/Context;)V

    .line 345
    iget-wide v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mOriginalStart:J

    invoke-virtual {v1, v2, v3, p2, v0}, Lcom/android/calendar/DeleteEventHelper;->forceDelete(JLcom/android/calendar/event/CalendarEventModel;I)Z

    move-result v0

    return v0

    .line 343
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getEndDateFromModel(Lcom/android/calendar/event/CalendarEventModel;)J
    .locals 6

    .prologue
    .line 389
    iget-wide v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mEnd:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 390
    iget-wide v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mEnd:J

    .line 398
    :goto_0
    return-wide v0

    .line 392
    :cond_0
    new-instance v1, Lcom/android/calendarcommon2/Duration;

    invoke-direct {v1}, Lcom/android/calendarcommon2/Duration;-><init>()V

    .line 394
    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mDuration:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/calendarcommon2/Duration;->parse(Ljava/lang/String;)V

    .line 395
    iget-wide v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mStart:J

    invoke-virtual {v1}, Lcom/android/calendarcommon2/Duration;->getMillis()J
    :try_end_0
    .catch Lcom/android/calendarcommon2/DateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    add-long/2addr v0, v2

    goto :goto_0

    .line 396
    :catch_0
    move-exception v0

    .line 397
    sget-object v2, Lcom/google/android/calendar/ical/ICalUtils;->TAG:Ljava/lang/String;

    const-string v3, "Error parsing duration string %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 398
    iget-wide v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mStart:J

    goto :goto_0
.end method

.method public static importEvent(Landroid/content/Context;Lcom/android/calendar/event/CalendarEventModel;Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 278
    invoke-interface {p2}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/data/AndroidCalendarKey;

    .line 279
    iput-object v4, p1, Lcom/android/calendar/event/CalendarEventModel;->mUri:Ljava/lang/String;

    .line 280
    invoke-interface {v0}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getCalendarId()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarId:J

    .line 281
    invoke-interface {v0}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getAccountName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccountName:Ljava/lang/String;

    .line 282
    invoke-interface {v0}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getAccountType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccountType:Ljava/lang/String;

    .line 283
    invoke-interface {v0}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getOwnerAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    .line 284
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 285
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    .line 287
    :cond_0
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mIsOrganizer:Z

    .line 288
    iget-boolean v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mIsOrganizer:Z

    if-nez v0, :cond_1

    .line 290
    const/4 v0, 0x3

    iput v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAttendeeStatus:I

    .line 293
    :cond_1
    invoke-static {p1}, Lcom/google/android/calendar/ical/ICalUtils;->removeOwnerFromAttendees(Lcom/android/calendar/event/CalendarEventModel;)V

    .line 295
    new-instance v0, Lcom/android/calendar/event/EditHelper;

    invoke-direct {v0, p0}, Lcom/android/calendar/event/EditHelper;-><init>(Landroid/content/Context;)V

    .line 296
    iget-wide v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarId:J

    invoke-static {v2, v3}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->setDefaultCalendarId(J)V

    .line 297
    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v4, v1}, Lcom/android/calendar/event/EditHelper;->saveEvent(Landroid/content/Context;Lcom/android/calendar/event/CalendarEventModel;Lcom/android/calendar/event/CalendarEventModel;I)Lcom/android/calendar/event/EditHelper$SaveEventResult;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/calendar/event/EditHelper$SaveEventResult;->queuedForSaving:Z

    return v0
.end method

.method public static makeCalendarSelectionString(Ljava/util/Collection;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 177
    const-string v0, "calendar_id"

    invoke-static {v0, p0}, Lcom/google/android/calendar/ical/ICalUtils;->makeNumericInClause(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static makeEventIdSelectionString(Ljava/util/Collection;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 193
    const-string v0, "_id"

    invoke-static {v0, p0}, Lcom/google/android/calendar/ical/ICalUtils;->makeNumericInClause(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static makeExtEventIdSelectionString(Ljava/util/Collection;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 189
    const-string v0, "event_id"

    invoke-static {v0, p0}, Lcom/google/android/calendar/ical/ICalUtils;->makeNumericInClause(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static makeInClause(Ljava/lang/String;Ljava/util/Collection;Lcom/google/common/base/Function;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<TT;>;",
            "Lcom/google/common/base/Function",
            "<TT;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 152
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 153
    const-string v0, "0<>0"

    .line 165
    :goto_0
    return-object v0

    .line 155
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 156
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 158
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, " IN ("

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 160
    invoke-interface {p2, v0}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 163
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 164
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static makeNumericInClause(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 169
    sget-object v0, Lcom/google/android/calendar/ical/ICalUtils;->ESCAPE_LONG:Lcom/google/common/base/Function;

    invoke-static {p0, p1, v0}, Lcom/google/android/calendar/ical/ICalUtils;->makeInClause(Ljava/lang/String;Ljava/util/Collection;Lcom/google/common/base/Function;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static makePropertyValueSelectionString(Ljava/util/Collection;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 185
    const-string v0, "value"

    invoke-static {v0, p0}, Lcom/google/android/calendar/ical/ICalUtils;->makeStringInClause(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static makeStringInClause(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 173
    sget-object v0, Lcom/google/android/calendar/ical/ICalUtils;->ESCAPE_STRING:Lcom/google/common/base/Function;

    invoke-static {p0, p1, v0}, Lcom/google/android/calendar/ical/ICalUtils;->makeInClause(Ljava/lang/String;Ljava/util/Collection;Lcom/google/common/base/Function;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static makeSyncData1SelectionString(Ljava/util/Collection;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 181
    const-string v0, "sync_data1"

    invoke-static {v0, p0}, Lcom/google/android/calendar/ical/ICalUtils;->makeStringInClause(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static removeOwnerFromAttendees(Lcom/android/calendar/event/CalendarEventModel;)V
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/CalendarEventModel$Attendee;

    .line 380
    invoke-virtual {v0}, Lcom/android/calendar/event/CalendarEventModel$Attendee;->getStatus()I

    move-result v1

    iput v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAttendeeStatus:I

    .line 381
    invoke-virtual {v0}, Lcom/android/calendar/event/CalendarEventModel$Attendee;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerName:Ljava/lang/String;

    .line 383
    :cond_0
    return-void
.end method

.method public static setEventModelFromICalCursor(Lcom/android/calendar/event/CalendarEventModel;Landroid/database/Cursor;ILjava/lang/String;)Z
    .locals 5

    .prologue
    const/16 v4, 0xc

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 484
    if-nez p0, :cond_0

    .line 485
    sget-object v1, Lcom/google/android/calendar/ical/ICalUtils;->TAG:Ljava/lang/String;

    const-string v2, "Null CalendarEventModel!"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 524
    :goto_0
    return v0

    .line 488
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 489
    :cond_1
    sget-object v1, Lcom/google/android/calendar/ical/ICalUtils;->TAG:Ljava/lang/String;

    const-string v2, "Unable to open iCal Cursor!"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 492
    :cond_2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mTitle:Ljava/lang/String;

    .line 493
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mDescription:Ljava/lang/String;

    .line 494
    const/4 v2, 0x2

    .line 495
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 494
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalStart:J

    iput-wide v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mDbStart:J

    iput-wide v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mStart:J

    .line 496
    const/4 v2, 0x3

    .line 497
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 496
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalEnd:J

    iput-wide v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mDbEnd:J

    iput-wide v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mEnd:J

    .line 498
    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mAllDay:Z

    .line 499
    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mLocation:Ljava/lang/String;

    .line 500
    const/4 v2, 0x6

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 502
    const-string v2, "PUBLISH"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 503
    const/4 v2, 0x7

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    .line 505
    :cond_3
    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mICalUid:Ljava/lang/String;

    .line 507
    const/16 v2, 0x9

    .line 508
    :try_start_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 507
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mSequence:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    :goto_1
    const/16 v0, 0xb

    .line 514
    :try_start_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 513
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mICalDtStamp:J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 518
    :goto_2
    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 520
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 519
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalStart:J

    .line 521
    iget-wide v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalStart:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalTime:Ljava/lang/Long;

    :cond_4
    move v0, v1

    .line 524
    goto/16 :goto_0

    .line 509
    :catch_0
    move-exception v2

    .line 510
    iput v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mSequence:I

    goto :goto_1

    .line 515
    :catch_1
    move-exception v0

    .line 516
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mICalDtStamp:J

    goto :goto_2
.end method

.method public static showSnackbar(Landroid/app/Activity;II)V
    .locals 1

    .prologue
    .line 583
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/google/android/calendar/ical/ICalUtils;->showSnackbar(Landroid/app/Activity;Ljava/lang/CharSequence;I)V

    .line 584
    return-void
.end method

.method public static showSnackbar(Landroid/app/Activity;Ljava/lang/CharSequence;I)V
    .locals 4

    .prologue
    .line 589
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 590
    sget v2, Lcom/android/calendar/R$layout;->toast_snackbar:I

    sget v0, Lcom/android/calendar/R$id;->toast_layout_root:I

    .line 591
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 590
    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 593
    if-nez v1, :cond_1

    .line 618
    :cond_0
    :goto_0
    return-void

    .line 597
    :cond_1
    sget v0, Lcom/android/calendar/R$id;->text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 599
    if-eqz v0, :cond_0

    .line 603
    invoke-static {p0}, Lcom/android/calendar/Utils;->createRobotoMedium(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 604
    if-eqz v2, :cond_2

    .line 605
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 608
    :cond_2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 610
    new-instance v2, Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 611
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/calendar/R$dimen;->snackbar_margin:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 612
    sget v0, Lcom/android/calendar/R$bool;->tablet_config:I

    invoke-static {p0, v0}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v0

    .line 613
    if-eqz v0, :cond_3

    const v0, 0x800003

    :goto_1
    or-int/lit8 v0, v0, 0x50

    invoke-virtual {v2, v0, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 615
    invoke-virtual {v2, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 616
    invoke-virtual {v2, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 617
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 613
    :cond_3
    const/4 v0, 0x7

    goto :goto_1
.end method

.method public static updateAttendee(Landroid/content/Context;Lcom/android/calendar/event/CalendarEventModel;Lcom/android/calendar/event/CalendarEventModel;)Z
    .locals 5

    .prologue
    .line 324
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 325
    :cond_0
    const/4 v0, 0x0

    .line 336
    :goto_0
    return v0

    .line 329
    :cond_1
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/CalendarEventModel$Attendee;

    .line 330
    iget-object v1, p2, Lcom/android/calendar/event/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/event/CalendarEventModel$Attendee;

    .line 331
    invoke-virtual {v1}, Lcom/android/calendar/event/CalendarEventModel$Attendee;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/calendar/event/CalendarEventModel$Attendee;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 332
    invoke-virtual {p1, v1}, Lcom/android/calendar/event/CalendarEventModel;->addAttendee(Lcom/android/calendar/event/CalendarEventModel$Attendee;)V

    goto :goto_1

    .line 336
    :cond_3
    invoke-static {p0, p1, p2}, Lcom/google/android/calendar/ical/ICalUtils;->updateEvent(Landroid/content/Context;Lcom/android/calendar/event/CalendarEventModel;Lcom/android/calendar/event/CalendarEventModel;)Z

    move-result v0

    goto :goto_0
.end method

.method public static updateEvent(Landroid/content/Context;Lcom/android/calendar/event/CalendarEventModel;Lcom/android/calendar/event/CalendarEventModel;)Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 354
    invoke-static {p1, p2}, Lcom/google/android/calendar/ical/ICalUtils;->completeModelFromOriginal(Lcom/android/calendar/event/CalendarEventModel;Lcom/android/calendar/event/CalendarEventModel;)V

    .line 356
    invoke-static {p1}, Lcom/google/android/calendar/ical/ICalUtils;->removeOwnerFromAttendees(Lcom/android/calendar/event/CalendarEventModel;)V

    .line 358
    new-instance v3, Lcom/android/calendar/event/EditHelper;

    invoke-direct {v3, p0}, Lcom/android/calendar/event/EditHelper;-><init>(Landroid/content/Context;)V

    .line 360
    iget-object v1, p1, Lcom/android/calendar/event/CalendarEventModel;->mOriginalTime:Ljava/lang/Long;

    if-eqz v1, :cond_0

    move v1, v2

    .line 365
    :goto_0
    if-ne v1, v2, :cond_2

    iget-wide v4, p2, Lcom/android/calendar/event/CalendarEventModel;->mOriginalId:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_2

    iget-object v2, p2, Lcom/android/calendar/event/CalendarEventModel;->mSyncId:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 367
    sget-object v1, Lcom/google/android/calendar/ical/ICalUtils;->TAG:Ljava/lang/String;

    const-string v2, "Trying to create an exception to not synced event"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 371
    :goto_1
    return v0

    .line 361
    :cond_0
    iget-object v1, p1, Lcom/android/calendar/event/CalendarEventModel;->mRrule:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    move v1, v0

    .line 362
    goto :goto_0

    .line 371
    :cond_2
    invoke-virtual {v3, p0, p1, p2, v1}, Lcom/android/calendar/event/EditHelper;->saveEvent(Landroid/content/Context;Lcom/android/calendar/event/CalendarEventModel;Lcom/android/calendar/event/CalendarEventModel;I)Lcom/android/calendar/event/EditHelper$SaveEventResult;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/calendar/event/EditHelper$SaveEventResult;->queuedForSaving:Z

    goto :goto_1
.end method
