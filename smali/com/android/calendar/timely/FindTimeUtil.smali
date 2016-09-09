.class public Lcom/android/calendar/timely/FindTimeUtil;
.super Ljava/lang/Object;
.source "FindTimeUtil.java"


# static fields
.field private static final FIND_TIME_GOOGLE_SCENARIOS:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/calendar/timely/FindTimeScenario;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIND_TIME_SCENARIOS:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/calendar/timely/FindTimeScenario;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/android/calendar/timely/FindTimeUtil;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lcom/android/calendar/timely/FindTimeScenarioDasher;

    invoke-direct {v0}, Lcom/android/calendar/timely/FindTimeScenarioDasher;-><init>()V

    .line 40
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/FindTimeUtil;->FIND_TIME_GOOGLE_SCENARIOS:Lcom/google/common/collect/ImmutableList;

    .line 42
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/calendar/timely/FindTimeUtil;->FIND_TIME_GOOGLE_SCENARIOS:Lcom/google/common/collect/ImmutableList;

    .line 43
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/calendar/timely/FindTimeScenarioExchange;

    invoke-direct {v1}, Lcom/android/calendar/timely/FindTimeScenarioExchange;-><init>()V

    .line 44
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/FindTimeUtil;->FIND_TIME_SCENARIOS:Lcom/google/common/collect/ImmutableList;

    .line 41
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeUtil;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method public static containsRooms(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/FindTimeAttendee;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 611
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/FindTimeAttendee;

    .line 612
    invoke-virtual {v0}, Lcom/android/calendar/timely/FindTimeAttendee;->isRoom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    const/4 v0, 0x1

    .line 616
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static convertToExplanationForExchange(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/calendar/timely/FindTimeAttendee;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/calendar/timely/AttendeeExplanation;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 564
    if-nez p0, :cond_0

    move-object v0, v1

    .line 571
    :goto_0
    return-object v0

    .line 567
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 568
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/FindTimeAttendee;

    .line 569
    new-instance v4, Lcom/android/calendar/timely/AttendeeExplanation;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v0, v1}, Lcom/android/calendar/timely/AttendeeExplanation;-><init>(ILcom/android/calendar/timely/FindTimeAttendee;Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 571
    :cond_1
    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0
.end method

.method public static getAccount(Lcom/google/calendar/v2/client/service/api/calendars/Calendar;)Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 424
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/calendars/Calendar;->getKey()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/calendar/event/data/AndroidCalendarKey;

    if-nez v0, :cond_0

    .line 425
    const/4 v0, 0x0

    .line 427
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/calendars/Calendar;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/data/AndroidCalendarKey;

    invoke-interface {v0}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    goto :goto_0
.end method

.method private getConflictMessage(Lcom/android/calendar/timely/AttendeeExplanation;ZZII)Ljava/lang/String;
    .locals 4

    .prologue
    .line 337
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 338
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 340
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 341
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/FindTimeUtil;->getSafeDisplayName(Lcom/android/calendar/timely/AttendeeExplanation;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p5, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 446
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/calendar/timely/FindTimeUtil;->getEmailPart(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEasServiceSupportPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 581
    const-string v0, "com.google.android.gm"

    invoke-static {p0, v0}, Lcom/android/calendar/timely/ExchangeUtil;->isEasServiceResolvable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    const-string v0, "com.google.android.gm"

    .line 589
    :goto_0
    return-object v0

    .line 584
    :cond_0
    const-string v0, "com.google.android.gm.exchange"

    const v1, 0x7b186

    invoke-static {p0, v0, v1}, Lcom/android/calendar/Utils;->isApkVersionAtLeast(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.google.android.gm.exchange"

    .line 586
    invoke-static {p0, v0}, Lcom/android/calendar/timely/ExchangeUtil;->isEasServiceResolvable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 587
    const-string v0, "com.google.android.gm.exchange"

    goto :goto_0

    .line 589
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getEmailLocalPart(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 442
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/calendar/timely/FindTimeUtil;->getEmailPart(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getEmailPart(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 431
    if-ltz p1, :cond_0

    const/4 v1, 0x1

    if-le p1, v1, :cond_1

    .line 438
    :cond_0
    :goto_0
    return-object v0

    .line 434
    :cond_1
    const-string v1, "@"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 435
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 438
    aget-object v0, v1, p1

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/calendar/timely/FindTimeUtil;
    .locals 2

    .prologue
    .line 57
    const-class v1, Lcom/android/calendar/timely/FindTimeUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/calendar/timely/FindTimeUtil;->sInstance:Lcom/android/calendar/timely/FindTimeUtil;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/android/calendar/timely/FindTimeUtil;

    invoke-direct {v0, p0}, Lcom/android/calendar/timely/FindTimeUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/calendar/timely/FindTimeUtil;->sInstance:Lcom/android/calendar/timely/FindTimeUtil;

    .line 60
    :cond_0
    sget-object v0, Lcom/android/calendar/timely/FindTimeUtil;->sInstance:Lcom/android/calendar/timely/FindTimeUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getMinDateForDatePicker(Landroid/content/Context;)Ljava/util/Calendar;
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 517
    invoke-static {p0}, Lcom/android/calendar/time/DateTimeUtils;->getNowDateTime(Landroid/content/Context;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    .line 518
    invoke-static {v0}, Lcom/android/calendar/time/DateTimeUtils;->roundDownToMidnight(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    .line 519
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 521
    invoke-static {p0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 522
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 525
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 526
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 527
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 529
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 528
    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 530
    return-object v0
.end method

.method private getNewConflictMessage(Lcom/android/calendar/timely/AttendeeExplanation;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/timely/AttendeeExplanation;",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/FindTimeAttendee;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 294
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/FindTimeAttendee;

    invoke-virtual {v0}, Lcom/android/calendar/timely/FindTimeAttendee;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 295
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/FindTimeAttendee;

    invoke-virtual {v0}, Lcom/android/calendar/timely/FindTimeAttendee;->getEmail()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/android/calendar/timely/AttendeeExplanation;->attendee:Lcom/android/calendar/timely/FindTimeAttendee;

    invoke-virtual {v1}, Lcom/android/calendar/timely/FindTimeAttendee;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 296
    iget v0, p1, Lcom/android/calendar/timely/AttendeeExplanation;->conflictType:I

    packed-switch v0, :pswitch_data_0

    .line 329
    const-string v1, ""

    :cond_0
    :goto_0
    return-object v1

    .line 298
    :pswitch_0
    iget-object v0, p1, Lcom/android/calendar/timely/AttendeeExplanation;->attendee:Lcom/android/calendar/timely/FindTimeAttendee;

    invoke-virtual {v0}, Lcom/android/calendar/timely/FindTimeAttendee;->isRoom()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->find_time_room_is_unavailable:I

    new-array v2, v6, [Ljava/lang/Object;

    .line 301
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/FindTimeUtil;->getSafeDisplayName(Lcom/android/calendar/timely/AttendeeExplanation;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 299
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 303
    :cond_1
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    .line 304
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->find_time_you_are_unavailable:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 308
    :goto_1
    invoke-virtual {p1}, Lcom/android/calendar/timely/AttendeeExplanation;->getConflictCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p1, Lcom/android/calendar/timely/AttendeeExplanation;->conflictingEvents:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineAttendeeEvent;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelineAttendeeEvent;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 312
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 313
    iget-object v2, p0, Lcom/android/calendar/timely/FindTimeUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$string;->find_time_two_lines:I

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v5

    aput-object v0, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 316
    :cond_2
    invoke-virtual {p1}, Lcom/android/calendar/timely/AttendeeExplanation;->getConflictCount()I

    move-result v0

    if-lt v0, v7, :cond_0

    .line 317
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/calendar/R$string;->find_time_plus_x_more:I

    new-array v3, v6, [Ljava/lang/Object;

    .line 318
    invoke-virtual {p1}, Lcom/android/calendar/timely/AttendeeExplanation;->getConflictCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 317
    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 319
    iget-object v2, p0, Lcom/android/calendar/timely/FindTimeUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$string;->find_time_two_info:I

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v5

    aput-object v0, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 305
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->find_time_guest_is_unavailable:I

    new-array v2, v6, [Ljava/lang/Object;

    .line 307
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/FindTimeUtil;->getSafeDisplayName(Lcom/android/calendar/timely/AttendeeExplanation;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 305
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 324
    :pswitch_1
    sget v4, Lcom/android/calendar/R$string;->find_time_you_do_not_take_meetings_at_this_time:I

    sget v5, Lcom/android/calendar/R$string;->find_time_guest_does_not_take_meetings_at_this_time:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/timely/FindTimeUtil;->getConflictMessage(Lcom/android/calendar/timely/AttendeeExplanation;ZZII)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 296
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getNewDescription(Lcom/android/calendar/timely/TimelineSuggestion;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 194
    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelineSuggestion;->getAttendeeExplanations()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 195
    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelineSuggestion;->getAttendees()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 196
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeUtil;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/calendar/R$string;->all_participants_can_attend:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 223
    :goto_0
    return-object v0

    .line 199
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 200
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/AttendeeExplanation;

    .line 201
    invoke-direct {p0, v0, v1, p2}, Lcom/android/calendar/timely/FindTimeUtil;->getNewConflictMessage(Lcom/android/calendar/timely/AttendeeExplanation;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 203
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/calendar/timely/FindTimeUtil;->hasOnlyConflicts(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 204
    invoke-direct {p0, v0}, Lcom/android/calendar/timely/FindTimeUtil;->getRoomCount(Lcom/google/common/collect/ImmutableList;)I

    move-result v1

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 205
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->find_time_several_rooms_are_unavailable:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 207
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/calendar/timely/FindTimeUtil;->getRoomCount(Lcom/google/common/collect/ImmutableList;)I

    move-result v0

    if-nez v0, :cond_4

    .line 208
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->find_time_several_guests_are_unavailable:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 211
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->find_time_several_participants_are_unavailable:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 215
    :cond_5
    invoke-direct {p0, v0}, Lcom/android/calendar/timely/FindTimeUtil;->hasOnlyUnavailable(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 216
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->find_time_several_guests_usually_do_not_take_meetings_at_this_time:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 219
    :cond_6
    invoke-direct {p0, v0}, Lcom/android/calendar/timely/FindTimeUtil;->getRoomCount(Lcom/google/common/collect/ImmutableList;)I

    move-result v0

    if-lez v0, :cond_7

    .line 220
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->find_time_several_participants_are_unavailable:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 223
    :cond_7
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->find_time_one_or_more_guests_have_conflict:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private getRoomCount(Lcom/google/common/collect/ImmutableList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/calendar/timely/AttendeeExplanation;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 229
    move v1, v0

    move v2, v0

    .line 230
    :goto_0
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 231
    invoke-virtual {p1, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/AttendeeExplanation;

    .line 232
    iget-object v0, v0, Lcom/android/calendar/timely/AttendeeExplanation;->attendee:Lcom/android/calendar/timely/FindTimeAttendee;

    invoke-virtual {v0}, Lcom/android/calendar/timely/FindTimeAttendee;->isRoom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    add-int/lit8 v2, v2, 0x1

    .line 230
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 236
    :cond_1
    return v2
.end method

.method private getSafeDisplayName(Lcom/android/calendar/timely/AttendeeExplanation;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 345
    iget-object v0, p1, Lcom/android/calendar/timely/AttendeeExplanation;->attendee:Lcom/android/calendar/timely/FindTimeAttendee;

    invoke-virtual {v0}, Lcom/android/calendar/timely/FindTimeAttendee;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 346
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 352
    :goto_0
    return-object v0

    .line 349
    :cond_0
    iget-object v0, p1, Lcom/android/calendar/timely/AttendeeExplanation;->attendee:Lcom/android/calendar/timely/FindTimeAttendee;

    invoke-virtual {v0}, Lcom/android/calendar/timely/FindTimeAttendee;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 350
    iget-object v0, p1, Lcom/android/calendar/timely/AttendeeExplanation;->attendee:Lcom/android/calendar/timely/FindTimeAttendee;

    invoke-virtual {v0}, Lcom/android/calendar/timely/FindTimeAttendee;->getEmail()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 352
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private hasOnlyConflicts(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/AttendeeExplanation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 253
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/AttendeeExplanation;

    .line 254
    iget v0, v0, Lcom/android/calendar/timely/AttendeeExplanation;->conflictType:I

    if-eq v0, v1, :cond_0

    .line 255
    const/4 v0, 0x0

    .line 258
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private hasOnlyUnavailable(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/AttendeeExplanation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 262
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/AttendeeExplanation;

    .line 263
    iget v0, v0, Lcom/android/calendar/timely/AttendeeExplanation;->conflictType:I

    if-eqz v0, :cond_0

    .line 264
    const/4 v0, 0x0

    .line 267
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static hideAllDayChips(Ljava/util/List;II)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/TimelyChip;",
            ">;>;II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 74
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 75
    new-instance v5, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    .line 77
    :goto_0
    if-ge v1, v3, :cond_0

    .line 78
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 80
    invoke-static {v0, p1, p1, p2, v5}, Lcom/android/calendar/Utils;->hideAllDayChips(Ljava/util/List;IIILjava/util/List;)V

    .line 82
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 84
    :cond_0
    return-object v4
.end method

.method private static isAnyScenarioEnabled(Landroid/content/Context;Lcom/google/calendar/v2/client/service/api/calendars/Calendar;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/calendar/v2/client/service/api/calendars/Calendar;",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/FindTimeScenario;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 408
    move v1, v2

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 409
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/FindTimeScenario;

    invoke-interface {v0, p0, p1}, Lcom/android/calendar/timely/FindTimeScenario;->isEnabled(Landroid/content/Context;Lcom/google/calendar/v2/client/service/api/calendars/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 410
    const/4 v2, 0x1

    .line 413
    :cond_0
    return v2

    .line 408
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static isCalendarTypeSupported(Lcom/google/calendar/v2/client/service/api/calendars/Calendar;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 468
    invoke-static {p0}, Lcom/android/calendar/timely/FindTimeUtil;->getAccount(Lcom/google/calendar/v2/client/service/api/calendars/Calendar;)Landroid/accounts/Account;

    move-result-object v2

    .line 469
    if-eqz v2, :cond_0

    .line 470
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/calendars/Calendar;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/syncadapters/calendar/timely/CalendarType;->calculateType(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_2

    :cond_0
    move v0, v1

    .line 492
    :cond_1
    :goto_0
    return v0

    .line 474
    :cond_2
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/calendars/Calendar;->isPrimary()Z

    move-result v3

    if-nez v3, :cond_1

    .line 478
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/calendars/Calendar;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/calendar/timely/FindTimeUtil;->getEmailLocalPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 479
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/calendars/Calendar;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/calendar/timely/FindTimeUtil;->getDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 480
    if-eqz v3, :cond_3

    if-nez v4, :cond_4

    :cond_3
    move v0, v1

    .line 481
    goto :goto_0

    .line 484
    :cond_4
    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/calendar/timely/FindTimeUtil;->getDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 485
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 486
    goto :goto_0
.end method

.method public static isFindTimeFeatureSupported(Landroid/content/Context;Lcom/google/calendar/v2/client/service/api/calendars/Calendar;)Z
    .locals 1

    .prologue
    .line 368
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/calendars/Calendar;->getKey()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/calendar/event/data/AndroidCalendarKey;

    if-nez v0, :cond_0

    .line 369
    const/4 v0, 0x0

    .line 372
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/calendar/timely/FindTimeUtil;->FIND_TIME_SCENARIOS:Lcom/google/common/collect/ImmutableList;

    invoke-static {p0, p1, v0}, Lcom/android/calendar/timely/FindTimeUtil;->isAnyScenarioEnabled(Landroid/content/Context;Lcom/google/calendar/v2/client/service/api/calendars/Calendar;Ljava/util/List;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isToday(J)Z
    .locals 4

    .prologue
    .line 503
    invoke-static {}, Lcom/android/calendar/time/DateTimeService;->getInstance()Lcom/android/calendar/time/DateTimeService;

    move-result-object v0

    .line 504
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/calendar/time/DateTimeService;->dateTimeForMillis(J)Lcom/android/calendar/time/DateTimeImpl;

    move-result-object v1

    .line 505
    invoke-virtual {v1}, Lcom/android/calendar/time/DateTimeImpl;->getJulianDay()I

    move-result v1

    .line 506
    invoke-virtual {v0, p0, p1}, Lcom/android/calendar/time/DateTimeService;->dateTimeForMillis(J)Lcom/android/calendar/time/DateTimeImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/time/DateTimeImpl;->getJulianDay()I

    move-result v0

    .line 507
    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setTimeFieldsBasedOnMillis(Lcom/android/calendar/timely/TimelineEvent;Ljava/util/TimeZone;)V
    .locals 6

    .prologue
    const/16 v5, 0xc

    const/16 v4, 0xb

    .line 92
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineEvent;->isAllDay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 99
    iget-wide v2, p0, Lcom/android/calendar/timely/TimelineEvent;->startMillis:J

    invoke-static {v2, v3, v0}, Lcom/android/calendar/time/Time;->getJulianDay(JLjava/util/TimeZone;)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/TimelineEvent;->startDay:I

    .line 100
    iget-wide v2, p0, Lcom/android/calendar/timely/TimelineEvent;->endMillis:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-static {v2, v3, v0}, Lcom/android/calendar/time/Time;->getJulianDay(JLjava/util/TimeZone;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelineEvent;->endDay:I

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/timely/TimelineEvent;->startTime:I

    .line 103
    const/16 v0, 0x59f

    iput v0, p0, Lcom/android/calendar/timely/TimelineEvent;->endTime:I

    .line 121
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 107
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 109
    iget-wide v2, p0, Lcom/android/calendar/timely/TimelineEvent;->startMillis:J

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 111
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    .line 112
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/calendar/timely/TimelineEvent;->startTime:I

    .line 114
    iget-wide v2, p0, Lcom/android/calendar/timely/TimelineEvent;->endMillis:J

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 116
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    .line 117
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/timely/TimelineEvent;->endTime:I

    .line 118
    iget-wide v0, p0, Lcom/android/calendar/timely/TimelineEvent;->startMillis:J

    invoke-static {v0, v1, p1}, Lcom/android/calendar/time/Time;->getJulianDay(JLjava/util/TimeZone;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelineEvent;->startDay:I

    .line 119
    iget-wide v0, p0, Lcom/android/calendar/timely/TimelineEvent;->endMillis:J

    invoke-static {v0, v1, p1}, Lcom/android/calendar/time/Time;->getJulianDay(JLjava/util/TimeZone;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelineEvent;->endDay:I

    goto :goto_0
.end method


# virtual methods
.method public createCustomSuggestion(Ljava/lang/String;Lcom/android/calendar/timely/TimelineSuggestion;IIILjava/util/TimeZone;)Lcom/android/calendar/timely/TimelineSuggestion;
    .locals 6

    .prologue
    .line 138
    if-nez p6, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p6

    .line 141
    :cond_0
    new-instance v0, Lcom/android/calendar/time/Time;

    invoke-direct {v0}, Lcom/android/calendar/time/Time;-><init>()V

    .line 142
    invoke-virtual {p6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/calendar/time/Time;->timezone:Ljava/lang/String;

    .line 143
    iget-object v1, v0, Lcom/android/calendar/time/Time;->timezone:Ljava/lang/String;

    invoke-static {p3, p4, p5, v1, v0}, Lcom/android/calendar/time/Time;->calculateDayHourMinuteMillis(IIILjava/lang/String;Lcom/android/calendar/time/Time;)J

    move-result-wide v0

    .line 145
    iget-wide v2, p2, Lcom/android/calendar/timely/TimelineSuggestion;->endMillis:J

    iget-wide v4, p2, Lcom/android/calendar/timely/TimelineSuggestion;->startMillis:J

    sub-long/2addr v2, v4

    .line 146
    add-long/2addr v2, v0

    .line 148
    new-instance v4, Lcom/android/calendar/timely/TimelineSuggestion;

    invoke-direct {v4, p2}, Lcom/android/calendar/timely/TimelineSuggestion;-><init>(Lcom/android/calendar/timely/TimelineSuggestion;)V

    .line 149
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/calendar/timely/TimelineSuggestion;->setIsCustom(Z)Lcom/android/calendar/timely/TimelineSuggestion;

    .line 150
    iput-wide v0, v4, Lcom/android/calendar/timely/TimelineSuggestion;->startMillis:J

    .line 151
    iput-wide v2, v4, Lcom/android/calendar/timely/TimelineSuggestion;->endMillis:J

    .line 152
    invoke-static {v4, p6}, Lcom/android/calendar/timely/FindTimeUtil;->setTimeFieldsBasedOnMillis(Lcom/android/calendar/timely/TimelineEvent;Ljava/util/TimeZone;)V

    .line 154
    const-string v0, "com.google.android.gm.exchange"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {p0, v4}, Lcom/android/calendar/timely/FindTimeUtil;->getConflictingAttendees(Lcom/android/calendar/timely/TimelineSuggestion;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/timely/FindTimeUtil;->convertToExplanationForExchange(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 155
    invoke-virtual {v4, v0}, Lcom/android/calendar/timely/TimelineSuggestion;->setAttendeeExplanations(Lcom/google/common/collect/ImmutableList;)Lcom/android/calendar/timely/TimelineSuggestion;

    .line 158
    :cond_1
    return-object v4
.end method

.method public getConflictingAttendees(Lcom/android/calendar/timely/TimelineSuggestion;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/timely/TimelineSuggestion;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/FindTimeAttendee;",
            ">;"
        }
    .end annotation

    .prologue
    .line 538
    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelineSuggestion;->getAttendees()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 539
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 541
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/FindTimeAttendee;

    .line 542
    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelineSuggestion;->getStartDay()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/FindTimeAttendee;->getEvents(I)Ljava/util/List;

    move-result-object v1

    .line 543
    if-eqz v1, :cond_0

    .line 546
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/timely/TimelineEvent;

    .line 547
    invoke-static {p1, v1}, Lcom/android/calendar/timely/TimelineItemUtil;->hasConflict(Lcom/android/calendar/timely/TimelineItem;Lcom/android/calendar/timely/TimelineItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 548
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 553
    :cond_2
    return-object v2
.end method

.method public getDescription(Lcom/android/calendar/timely/TimelineSuggestion;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelineSuggestion;->isCustom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    const-string v0, ""

    .line 247
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/timely/FindTimeUtil;->getNewDescription(Lcom/android/calendar/timely/TimelineSuggestion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDisplayedDateTime(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Lcom/android/calendar/timely/TimelineSuggestion;Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 604
    const/16 v8, 0x10

    .line 605
    iget-wide v0, p3, Lcom/android/calendar/timely/TimelineSuggestion;->startMillis:J

    iget-wide v2, p3, Lcom/android/calendar/timely/TimelineSuggestion;->endMillis:J

    .line 606
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-boolean v7, p3, Lcom/android/calendar/timely/TimelineSuggestion;->allDay:Z

    iget-object v9, p0, Lcom/android/calendar/timely/FindTimeUtil;->mContext:Landroid/content/Context;

    move-object/from16 v6, p4

    move-object v10, p1

    move-object v11, p2

    .line 605
    invoke-static/range {v0 .. v11}, Lcom/android/calendar/Utils;->getDisplayedDateTimesInTimezone(JJJLjava/lang/String;ZILandroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Z

    .line 608
    return-void
.end method
