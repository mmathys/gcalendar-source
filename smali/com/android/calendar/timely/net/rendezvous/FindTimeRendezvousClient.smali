.class public Lcom/android/calendar/timely/net/rendezvous/FindTimeRendezvousClient;
.super Lcom/android/calendar/timely/net/FindTimeClientFragment;
.source "FindTimeRendezvousClient.java"


# static fields
.field private static final ATTENDEE_CONVERSION_ARRAY:[Lcom/google/calendar/suggest/v2/nano/Attendee;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mContext:Landroid/content/Context;

.field mLocale:Ljava/lang/String;

.field mRequestExecutor:Lcom/android/calendar/timely/net/rendezvous/FindTimeRequestExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/android/calendar/timely/net/rendezvous/FindTimeRendezvousClient;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/net/rendezvous/FindTimeRendezvousClient;->TAG:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/calendar/suggest/v2/nano/Attendee;

    sput-object v0, Lcom/android/calendar/timely/net/rendezvous/FindTimeRendezvousClient;->ATTENDEE_CONVERSION_ARRAY:[Lcom/google/calendar/suggest/v2/nano/Attendee;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/calendar/timely/net/FindTimeClientFragment;-><init>()V

    return-void
.end method

.method private buildAttendeeMap([Lcom/google/calendar/suggest/v2/nano/Attendee;[Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;Ljava/util/TimeZone;[Lcom/google/calendar/suggest/v2/nano/AttendeeEvents;Ljava/util/Map;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/calendar/suggest/v2/nano/Attendee;",
            "[",
            "Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;",
            "Ljava/util/TimeZone;",
            "[",
            "Lcom/google/calendar/suggest/v2/nano/AttendeeEvents;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/calendar/timely/FindTimeAttendee;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 278
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 279
    if-eqz p1, :cond_0

    .line 280
    array-length v4, p1

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, p1, v2

    .line 281
    iget-object v5, v0, Lcom/google/calendar/suggest/v2/nano/Attendee;->email:Ljava/lang/String;

    .line 282
    new-instance v6, Lcom/android/calendar/timely/FindTimeAttendee;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v0, v0, Lcom/google/calendar/suggest/v2/nano/Attendee;->organizer:Ljava/lang/Boolean;

    .line 283
    invoke-virtual {v7, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-direct {v6, v5, v0}, Lcom/android/calendar/timely/FindTimeAttendee;-><init>(Ljava/lang/String;Z)V

    .line 284
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/android/calendar/timely/FindTimeAttendee;->setDisplayName(Ljava/lang/String;)Lcom/android/calendar/timely/FindTimeAttendee;

    move-result-object v0

    .line 285
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 289
    :cond_0
    if-eqz p2, :cond_2

    .line 290
    array-length v4, p2

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v0, p2, v2

    .line 291
    iget-object v5, v0, Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;->attendee:Lcom/google/calendar/suggest/v2/nano/Attendee;

    if-eqz v5, :cond_1

    .line 292
    iget-object v5, v0, Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;->attendee:Lcom/google/calendar/suggest/v2/nano/Attendee;

    iget-object v5, v5, Lcom/google/calendar/suggest/v2/nano/Attendee;->email:Ljava/lang/String;

    .line 293
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v0, v0, Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;->attendee:Lcom/google/calendar/suggest/v2/nano/Attendee;

    iget-object v0, v0, Lcom/google/calendar/suggest/v2/nano/Attendee;->organizer:Ljava/lang/Boolean;

    invoke-virtual {v6, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 294
    new-instance v6, Lcom/android/calendar/timely/FindTimeAttendee;

    invoke-direct {v6, v5, v0}, Lcom/android/calendar/timely/FindTimeAttendee;-><init>(Ljava/lang/String;Z)V

    .line 296
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/android/calendar/timely/FindTimeAttendee;->setDisplayName(Ljava/lang/String;)Lcom/android/calendar/timely/FindTimeAttendee;

    move-result-object v0

    .line 297
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 303
    :cond_2
    if-eqz p4, :cond_3

    .line 304
    array-length v2, p4

    :goto_2
    if-ge v1, v2, :cond_3

    aget-object v4, p4, v1

    .line 305
    iget-object v0, v4, Lcom/google/calendar/suggest/v2/nano/AttendeeEvents;->attendee:Lcom/google/calendar/suggest/v2/nano/Attendee;

    iget-object v0, v0, Lcom/google/calendar/suggest/v2/nano/Attendee;->email:Ljava/lang/String;

    .line 306
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/FindTimeAttendee;

    .line 307
    invoke-direct {p0, v4, p3}, Lcom/android/calendar/timely/net/rendezvous/FindTimeRendezvousClient;->convertToTimelineAttendeeEventList(Lcom/google/calendar/suggest/v2/nano/AttendeeEvents;Ljava/util/TimeZone;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/calendar/timely/FindTimeAttendee;->setEvents(Ljava/util/List;)Lcom/android/calendar/timely/FindTimeAttendee;

    .line 304
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 311
    :cond_3
    return-object v3
.end method

.method private convertOmittedReason(I)I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 379
    packed-switch p1, :pswitch_data_0

    .line 387
    :goto_0
    :pswitch_0
    return v0

    .line 383
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 385
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 379
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private convertToAttendeeExplanations([Lcom/google/calendar/suggest/v2/nano/Explanation;Ljava/util/Map;Ljava/util/TimeZone;)Lcom/google/common/collect/ImmutableList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/calendar/suggest/v2/nano/Explanation;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/calendar/timely/FindTimeAttendee;",
            ">;",
            "Ljava/util/TimeZone;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/calendar/timely/AttendeeExplanation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 432
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v2

    .line 433
    array-length v3, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, p1, v1

    .line 434
    new-instance v5, Lcom/android/calendar/timely/AttendeeExplanation;

    iget v0, v4, Lcom/google/calendar/suggest/v2/nano/Explanation;->conflictType:I

    .line 435
    invoke-static {v0}, Lcom/android/calendar/timely/net/rendezvous/FindTimeRendezvousClient;->convertToConflictType(I)I

    move-result v6

    iget-object v0, v4, Lcom/google/calendar/suggest/v2/nano/Explanation;->attendee:Lcom/google/calendar/suggest/v2/nano/Attendee;

    iget-object v0, v0, Lcom/google/calendar/suggest/v2/nano/Attendee;->email:Ljava/lang/String;

    .line 436
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/FindTimeAttendee;

    iget-object v4, v4, Lcom/google/calendar/suggest/v2/nano/Explanation;->conflictingEvents:[Lcom/google/calendar/suggest/v2/nano/Event;

    .line 437
    invoke-direct {p0, v4, p3}, Lcom/android/calendar/timely/net/rendezvous/FindTimeRendezvousClient;->convertToTimelineAttendeeEvents([Lcom/google/calendar/suggest/v2/nano/Event;Ljava/util/TimeZone;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v5, v6, v0, v4}, Lcom/android/calendar/timely/AttendeeExplanation;-><init>(ILcom/android/calendar/timely/FindTimeAttendee;Ljava/util/List;)V

    .line 434
    invoke-virtual {v2, v5}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 433
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 439
    :cond_0
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method static convertToConflictType(I)I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 444
    const/high16 v2, -0x80000000

    if-ne p0, v2, :cond_0

    .line 454
    :goto_0
    :pswitch_0
    return v0

    .line 447
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 453
    sget-object v2, Lcom/android/calendar/timely/net/rendezvous/FindTimeRendezvousClient;->TAG:Ljava/lang/String;

    const-string v3, "Unexpected conflict type %d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {v2, v3, v1}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 449
    goto :goto_0

    .line 447
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private convertToOmittedAttendeeList([Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;Ljava/util/Map;)Lcom/google/common/collect/ImmutableList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/calendar/timely/FindTimeAttendee;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/calendar/timely/OmittedAttendee;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 356
    if-nez p1, :cond_0

    .line 357
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 375
    :goto_0
    return-object v0

    .line 359
    :cond_0
    new-instance v4, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v4}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 361
    array-length v5, p1

    move v3, v1

    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v6, p1, v3

    .line 362
    iget-object v0, v6, Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;->attendee:Lcom/google/calendar/suggest/v2/nano/Attendee;

    iget-object v0, v0, Lcom/google/calendar/suggest/v2/nano/Attendee;->email:Ljava/lang/String;

    .line 363
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/FindTimeAttendee;

    .line 364
    if-nez v0, :cond_1

    .line 365
    iget-object v0, v6, Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;->attendee:Lcom/google/calendar/suggest/v2/nano/Attendee;

    iget-object v0, v0, Lcom/google/calendar/suggest/v2/nano/Attendee;->organizer:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    iget-object v0, v6, Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;->attendee:Lcom/google/calendar/suggest/v2/nano/Attendee;

    iget-object v0, v0, Lcom/google/calendar/suggest/v2/nano/Attendee;->organizer:Ljava/lang/Boolean;

    .line 366
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 367
    :goto_2
    new-instance v2, Lcom/android/calendar/timely/FindTimeAttendee;

    iget-object v7, v6, Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;->attendee:Lcom/google/calendar/suggest/v2/nano/Attendee;

    iget-object v7, v7, Lcom/google/calendar/suggest/v2/nano/Attendee;->email:Ljava/lang/String;

    invoke-direct {v2, v7, v0}, Lcom/android/calendar/timely/FindTimeAttendee;-><init>(Ljava/lang/String;Z)V

    .line 368
    sget-object v0, Lcom/android/calendar/timely/net/rendezvous/FindTimeRendezvousClient;->TAG:Ljava/lang/String;

    const-string v7, "Could not find attendee in suggest response!"

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v0, v7, v8}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v2

    .line 370
    :cond_1
    new-instance v2, Lcom/android/calendar/timely/OmittedAttendee;

    .line 371
    invoke-virtual {v0}, Lcom/android/calendar/timely/FindTimeAttendee;->getEmail()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/calendar/timely/FindTimeAttendee;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iget v6, v6, Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;->reason:I

    .line 372
    invoke-direct {p0, v6}, Lcom/android/calendar/timely/net/rendezvous/FindTimeRendezvousClient;->convertOmittedReason(I)I

    move-result v6

    invoke-direct {v2, v7, v0, v6}, Lcom/android/calendar/timely/OmittedAttendee;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 373
    invoke-virtual {v4, v2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 361
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    move v0, v1

    .line 366
    goto :goto_2

    .line 375
    :cond_3
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0
.end method

.method private convertToStringList(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/FindTimeAttendee;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 343
    if-nez p1, :cond_0

    .line 344
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 350
    :goto_0
    return-object v0

    .line 346
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 347
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/FindTimeAttendee;

    .line 348
    invoke-virtual {v0}, Lcom/android/calendar/timely/FindTimeAttendee;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_1

    .line 350
    :cond_1
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0
.end method

.method private convertToSuggestionList(Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;Ljava/util/TimeZone;Ljava/util/Map;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;",
            "Ljava/util/TimeZone;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/calendar/timely/FindTimeAttendee;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/FindTimeAttendee;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/calendar/timely/TimelineSuggestion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 323
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->suggestions:[Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;

    if-nez v0, :cond_1

    .line 325
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 336
    :goto_0
    return-object v0

    .line 329
    :cond_1
    iget-object v1, p1, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->suggestions:[Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;

    .line 330
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v2

    .line 331
    array-length v3, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v1, v0

    .line 332
    invoke-direct {p0, v4, p3, p4, p2}, Lcom/android/calendar/timely/net/rendezvous/FindTimeRendezvousClient;->convertToTimelineSuggestion(Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;Ljava/util/Map;Ljava/util/List;Ljava/util/TimeZone;)Lcom/android/calendar/timely/TimelineSuggestion;

    move-result-object v4

    .line 334
    invoke-virtual {v2, v4}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 331
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 336
    :cond_2
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0
.end method

.method private convertToTimelineAttendeeEvent(Lcom/google/calendar/suggest/v2/nano/Event;Ljava/util/TimeZone;)Lcom/android/calendar/timely/TimelineAttendeeEvent;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 493
    new-instance v0, Lcom/android/calendar/timely/TimelineAttendeeEvent;

    invoke-direct {v0}, Lcom/android/calendar/timely/TimelineAttendeeEvent;-><init>()V

    .line 495
    iget-object v1, p1, Lcom/google/calendar/suggest/v2/nano/Event;->summary:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/calendar/timely/TimelineAttendeeEvent;->title:Ljava/lang/String;

    .line 498
    iget-object v1, v0, Lcom/android/calendar/timely/TimelineAttendeeEvent;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 499
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/google/calendar/suggest/v2/nano/Event;->private_:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 500
    iget-object v1, p0, Lcom/android/calendar/timely/net/rendezvous/FindTimeRendezvousClient;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/calendar/R$string;->busy:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/calendar/timely/TimelineAttendeeEvent;->title:Ljava/lang/String;

    .line 506
    :cond_0
    :goto_0
    iget-object v1, p1, Lcom/google/calendar/suggest/v2/nano/Event;->time:Lcom/google/calendar/suggest/v2/nano/SingleEventTime;

    iget-object v1, v1, Lcom/google/calendar/suggest/v2/nano/SingleEventTime;->allDay:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/google/calendar/suggest/v2/nano/Event;->time:Lcom/google/calendar/suggest/v2/nano/SingleEventTime;

    iget-object v1, v1, Lcom/google/calendar/suggest/v2/nano/SingleEventTime;->allDay:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 507
    iput-boolean v4, v0, Lcom/android/calendar/timely/TimelineAttendeeEvent;->allDay:Z

    .line 509
    :cond_1
    iget-object v1, p1, Lcom/google/calendar/suggest/v2/nano/Event;->time:Lcom/google/calendar/suggest/v2/nano/SingleEventTime;

    iget-object v1, v1, Lcom/google/calendar/suggest/v2/nano/SingleEventTime;->startTime:Lcom/google/protobuf/nano/Timestamp;

    if-eqz v1, :cond_2

    .line 510
    iget-object v1, p1, Lcom/google/calendar/suggest/v2/nano/Event;->time:Lcom/google/calendar/suggest/v2/nano/SingleEventTime;

    iget-object v1, v1, Lcom/google/calendar/suggest/v2/nano/SingleEventTime;->startTime:Lcom/google/protobuf/nano/Timestamp;

    .line 511
    invoke-static {v1}, Lcom/android/calendar/timely/net/rendezvous/TimestampUtils;->timestampToMillis(Lcom/google/protobuf/nano/Timestamp;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/calendar/timely/TimelineAttendeeEvent;->startMillis:J

    .line 513
    :cond_2
    iget-object v1, p1, Lcom/google/calendar/suggest/v2/nano/Event;->time:Lcom/google/calendar/suggest/v2/nano/SingleEventTime;

    iget-object v1, v1, Lcom/google/calendar/suggest/v2/nano/SingleEventTime;->endTime:Lcom/google/protobuf/nano/Timestamp;

    if-eqz v1, :cond_5

    .line 514
    iget-object v1, p1, Lcom/google/calendar/suggest/v2/nano/Event;->time:Lcom/google/calendar/suggest/v2/nano/SingleEventTime;

    iget-object v1, v1, Lcom/google/calendar/suggest/v2/nano/SingleEventTime;->endTime:Lcom/google/protobuf/nano/Timestamp;

    invoke-static {v1}, Lcom/android/calendar/timely/net/rendezvous/TimestampUtils;->timestampToMillis(Lcom/google/protobuf/nano/Timestamp;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/calendar/timely/TimelineAttendeeEvent;->endMillis:J

    .line 518
    :goto_1
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/google/calendar/suggest/v2/nano/Event;->declined:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 519
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/calendar/timely/TimelineAttendeeEvent;->selfAttendeeStatus:I

    .line 522
    :cond_3
    invoke-static {v0, p2}, Lcom/android/calendar/timely/FindTimeUtil;->setTimeFieldsBasedOnMillis(Lcom/android/calendar/timely/TimelineEvent;Ljava/util/TimeZone;)V

    .line 524
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/google/calendar/suggest/v2/nano/Event;->transparent:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/calendar/timely/TimelineAttendeeEvent;->isTransparent:Z

    .line 526
    iget-object v1, p1, Lcom/google/calendar/suggest/v2/nano/Event;->location:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/calendar/timely/TimelineAttendeeEvent;->location:Ljava/lang/String;

    .line 528
    return-object v0

    .line 502
    :cond_4
    iget-object v1, p0, Lcom/android/calendar/timely/net/rendezvous/FindTimeRendezvousClient;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/calendar/R$string;->no_title_label:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/calendar/timely/TimelineAttendeeEvent;->title:Ljava/lang/String;

    goto :goto_0

    .line 516
    :cond_5
    iput-boolean v4, v0, Lcom/android/calendar/timely/TimelineAttendeeEvent;->endTimeUnspecified:Z

    goto :goto_1
.end method

.method private convertToTimelineAttendeeEventList(Lcom/google/calendar/suggest/v2/nano/AttendeeEvents;Ljava/util/TimeZone;)Lcom/google/common/collect/ImmutableList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/suggest/v2/nano/AttendeeEvents;",
            "Ljava/util/TimeZone;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/calendar/timely/TimelineAttendeeEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 464
    iget-object v1, p1, Lcom/google/calendar/suggest/v2/nano/AttendeeEvents;->events:[Lcom/google/calendar/suggest/v2/nano/Event;

    .line 466
    if-nez v1, :cond_0

    .line 468
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 477
    :goto_0
    return-object v0

    .line 472
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    array-length v0, v1

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 473
    array-length v3, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v4, v1, v0

    .line 474
    invoke-direct {p0, v4, p2}, Lcom/android/calendar/timely/net/rendezvous/FindTimeRendezvousClient;->convertToTimelineAttendeeEvent(Lcom/google/calendar/suggest/v2/nano/Event;Ljava/util/TimeZone;)Lcom/android/calendar/timely/TimelineAttendeeEvent;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 476
    :cond_1
    sget-object v0, Lcom/android/calendar/timely/TimelineItem;->ItemComparator:Ljava/util/Comparator;

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 477
    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0
.end method

.method private convertToTimelineAttendeeEvents([Lcom/google/calendar/suggest/v2/nano/Event;Ljava/util/TimeZone;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/calendar/suggest/v2/nano/Event;",
            "Ljava/util/TimeZone;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/TimelineAttendeeEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 482
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 483
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    .line 484
    invoke-direct {p0, v3, p2}, Lcom/android/calendar/timely/net/rendezvous/FindTimeRendezvousClient;->convertToTimelineAttendeeEvent(Lcom/google/calendar/suggest/v2/nano/Event;Ljava/util/TimeZone;)Lcom/android/calendar/timely/TimelineAttendeeEvent;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 486
    :cond_0
    return-object v1
.end method

.method private convertToTimelineSuggestion(Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;Ljava/util/Map;Ljava/util/List;Ljava/util/TimeZone;)Lcom/android/calendar/timely/TimelineSuggestion;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/calendar/timely/FindTimeAttendee;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/FindTimeAttendee;",
            ">;",
            "Ljava/util/TimeZone;",
            ")",
            "Lcom/android/calendar/timely/TimelineSuggestion;"
        }
    .end annotation

    .prologue
    .line 399
    new-instance v1, Lcom/android/calendar/timely/TimelineSuggestion;

    invoke-direct {v1}, Lcom/android/calendar/timely/TimelineSuggestion;-><init>()V

    .line 401
    iget-object v0, p1, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->eventTime:Lcom/google/calendar/suggest/v2/nano/SingleEventTime;

    iget-object v0, v0, Lcom/google/calendar/suggest/v2/nano/SingleEventTime;->startTime:Lcom/google/protobuf/nano/Timestamp;

    .line 402
    invoke-static {v0}, Lcom/android/calendar/timely/net/rendezvous/TimestampUtils;->timestampToMillis(Lcom/google/protobuf/nano/Timestamp;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/calendar/timely/TimelineSuggestion;->startMillis:J

    .line 403
    iget-object v0, p1, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->eventTime:Lcom/google/calendar/suggest/v2/nano/SingleEventTime;

    iget-object v0, v0, Lcom/google/calendar/suggest/v2/nano/SingleEventTime;->endTime:Lcom/google/protobuf/nano/Timestamp;

    .line 404
    invoke-static {v0}, Lcom/android/calendar/timely/net/rendezvous/TimestampUtils;->timestampToMillis(Lcom/google/protobuf/nano/Timestamp;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/calendar/timely/TimelineSuggestion;->endMillis:J

    .line 405
    invoke-static {v1, p4}, Lcom/android/calendar/timely/FindTimeUtil;->setTimeFieldsBasedOnMillis(Lcom/android/calendar/timely/TimelineEvent;Ljava/util/TimeZone;)V

    .line 408
    iget-object v2, p1, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->attendeeExplanations:[Lcom/google/calendar/suggest/v2/nano/Explanation;

    .line 409
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 410
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/FindTimeAttendee;

    .line 411
    invoke-virtual {v0}, Lcom/android/calendar/timely/FindTimeAttendee;->isOrganizer()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 413
    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/android/calendar/timely/FindTimeAttendee;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/FindTimeAttendee;

    invoke-interface {v3, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 416
    :cond_0
    invoke-virtual {v0}, Lcom/android/calendar/timely/FindTimeAttendee;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/FindTimeAttendee;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 421
    :cond_1
    invoke-direct {p0, v2, p2, p4}, Lcom/android/calendar/timely/net/rendezvous/FindTimeRendezvousClient;->convertToAttendeeExplanations([Lcom/google/calendar/suggest/v2/nano/Explanation;Ljava/util/Map;Ljava/util/TimeZone;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 420
    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/TimelineSuggestion;->setAttendeeExplanations(Lcom/google/common/collect/ImmutableList;)Lcom/android/calendar/timely/TimelineSuggestion;

    .line 422
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/TimelineSuggestion;->setAttendees(Lcom/google/common/collect/ImmutableList;)Lcom/android/calendar/timely/TimelineSuggestion;

    .line 424
    iget-object v0, p1, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->suggestionId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/TimelineSuggestion;->setSuggestionId(Ljava/lang/String;)Lcom/android/calendar/timely/TimelineSuggestion;

    .line 426
    return-object v1
.end method

.method private createEmailToDisplayNameMap(Ljava/util/List;[Lcom/google/calendar/suggest/v2/nano/Attendee;[Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/FindTimeAttendee;",
            ">;[",
            "Lcom/google/calendar/suggest/v2/nano/Attendee;",
            "[",
            "Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 238
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 239
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/FindTimeAttendee;

    .line 240
    invoke-virtual {v0}, Lcom/android/calendar/timely/FindTimeAttendee;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 241
    invoke-virtual {v0}, Lcom/android/calendar/timely/FindTimeAttendee;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 243
    invoke-virtual {v0}, Lcom/android/calendar/timely/FindTimeAttendee;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/calendar/timely/FindTimeAttendee;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 249
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 250
    array-length v2, p2

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_3

    aget-object v5, p2, v0

    .line 251
    iget-object v6, v5, Lcom/google/calendar/suggest/v2/nano/Attendee;->email:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 252
    iget-object v5, v5, Lcom/google/calendar/suggest/v2/nano/Attendee;->email:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 255
    :cond_3
    array-length v2, p3

    move v0, v1

    :goto_2
    if-ge v0, v2, :cond_5

    aget-object v5, p3, v0

    .line 256
    iget-object v6, v5, Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;->attendee:Lcom/google/calendar/suggest/v2/nano/Attendee;

    iget-object v6, v6, Lcom/google/calendar/suggest/v2/nano/Attendee;->email:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 257
    iget-object v5, v5, Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;->attendee:Lcom/google/calendar/suggest/v2/nano/Attendee;

    iget-object v5, v5, Lcom/google/calendar/suggest/v2/nano/Attendee;->email:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 260
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/timely/net/rendezvous/FindTimeRendezvousClient;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/android/calendar/ContactNameResolver;->loadDisplayNames(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v5

    move v2, v1

    .line 262
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 263
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 264
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 265
    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 268
    :cond_6
    return-object v3
.end method

.method private createEmptyData()Lcom/android/calendar/timely/net/FindTimeClientFragment$Data;
    .locals 6

    .prologue
    .line 543
    new-instance v0, Lcom/android/calendar/timely/net/FindTimeClientFragment$Data;

    .line 544
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 545
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 546
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/timely/net/FindTimeClientFragment$Data;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;ILjava/lang/String;)V

    .line 543
    return-object v0
.end method

.method private createRequest(Ljava/util/List;ILjava/lang/Long;JJJLjava/util/TimeZone;ZLjava/lang/String;)Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/FindTimeAttendee;",
            ">;I",
            "Ljava/lang/Long;",
            "JJJ",
            "Ljava/util/TimeZone;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;"
        }
    .end annotation

    .prologue
    .line 190
    new-instance v4, Lcom/google/calendar/suggest/v2/nano/UserContext;

    invoke-direct {v4}, Lcom/google/calendar/suggest/v2/nano/UserContext;-><init>()V

    .line 191
    invoke-virtual/range {p10 .. p10}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/google/calendar/suggest/v2/nano/UserContext;->timezone:Ljava/lang/String;

    .line 192
    iget-object v2, p0, Lcom/android/calendar/timely/net/rendezvous/FindTimeRendezvousClient;->mLocale:Ljava/lang/String;

    iput-object v2, v4, Lcom/google/calendar/suggest/v2/nano/UserContext;->locale:Ljava/lang/String;

    .line 194
    new-instance v5, Lcom/google/calendar/suggest/v2/nano/TimeSettings;

    invoke-direct {v5}, Lcom/google/calendar/suggest/v2/nano/TimeSettings;-><init>()V

    .line 195
    const/4 v2, 0x4

    if-ne p2, v2, :cond_1

    .line 197
    const/4 v2, 0x1

    iput v2, v5, Lcom/google/calendar/suggest/v2/nano/TimeSettings;->timeframeType:I

    .line 198
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/calendar/timely/net/rendezvous/TimestampUtils;->timestampFromMillis(J)Lcom/google/protobuf/nano/Timestamp;

    move-result-object v2

    iput-object v2, v5, Lcom/google/calendar/suggest/v2/nano/TimeSettings;->windowStartTime:Lcom/google/protobuf/nano/Timestamp;

    .line 203
    :goto_0
    invoke-static/range {p8 .. p9}, Lcom/android/calendar/timely/net/rendezvous/TimestampUtils;->durationFromMillis(J)Lcom/google/protobuf/nano/Duration;

    move-result-object v2

    iput-object v2, v5, Lcom/google/calendar/suggest/v2/nano/TimeSettings;->duration:Lcom/google/protobuf/nano/Duration;

    .line 205
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 206
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_2

    .line 207
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/timely/FindTimeAttendee;

    .line 208
    new-instance v7, Lcom/google/calendar/suggest/v2/nano/Attendee;

    invoke-direct {v7}, Lcom/google/calendar/suggest/v2/nano/Attendee;-><init>()V

    .line 209
    invoke-virtual {v2}, Lcom/android/calendar/timely/FindTimeAttendee;->getEmail()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/google/calendar/suggest/v2/nano/Attendee;->email:Ljava/lang/String;

    .line 210
    if-nez v3, :cond_0

    .line 212
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v7, Lcom/google/calendar/suggest/v2/nano/Attendee;->organizer:Ljava/lang/Boolean;

    .line 214
    :cond_0
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 200
    :cond_1
    invoke-static {p4, p5}, Lcom/android/calendar/timely/net/rendezvous/TimestampUtils;->timestampFromMillis(J)Lcom/google/protobuf/nano/Timestamp;

    move-result-object v2

    iput-object v2, v5, Lcom/google/calendar/suggest/v2/nano/TimeSettings;->windowStartTime:Lcom/google/protobuf/nano/Timestamp;

    .line 201
    invoke-static {p6, p7}, Lcom/android/calendar/timely/net/rendezvous/TimestampUtils;->timestampFromMillis(J)Lcom/google/protobuf/nano/Timestamp;

    move-result-object v2

    iput-object v2, v5, Lcom/google/calendar/suggest/v2/nano/TimeSettings;->windowEndTime:Lcom/google/protobuf/nano/Timestamp;

    goto :goto_0

    .line 217
    :cond_2
    new-instance v3, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;

    invoke-direct {v3}, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;-><init>()V

    .line 218
    iput-object v4, v3, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->userContext:Lcom/google/calendar/suggest/v2/nano/UserContext;

    .line 219
    iput-object v5, v3, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->timeSettings:Lcom/google/calendar/suggest/v2/nano/TimeSettings;

    .line 220
    sget-object v2, Lcom/android/calendar/timely/net/rendezvous/FindTimeRendezvousClient;->ATTENDEE_CONVERSION_ARRAY:[Lcom/google/calendar/suggest/v2/nano/Attendee;

    invoke-interface {v6, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/calendar/suggest/v2/nano/Attendee;

    iput-object v2, v3, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->attendees:[Lcom/google/calendar/suggest/v2/nano/Attendee;

    .line 221
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v3, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->includeAttendeesEvents:Ljava/lang/Boolean;

    .line 222
    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v3, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->maxResults:Ljava/lang/Integer;

    .line 223
    invoke-static/range {p11 .. p11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v3, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->considerRooms:Ljava/lang/Boolean;

    .line 224
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v3, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->expandGroupAttendees:Ljava/lang/Boolean;

    .line 225
    move-object/from16 v0, p12

    iput-object v0, v3, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->eventReference:Ljava/lang/String;

    .line 226
    return-object v3
.end method

.method private getAcceptableSuggestions(Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/TimelineSuggestion;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p1, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->acceptableSuggestions:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 161
    const/4 v0, 0x0

    .line 167
    :cond_0
    :goto_0
    return v0

    .line 163
    :cond_1
    iget-object v0, p1, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->acceptableSuggestions:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 164
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 165
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method private getConsideredAttendees(Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;Ljava/util/Map;)Lcom/google/common/collect/ImmutableList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/calendar/timely/FindTimeAttendee;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v2

    .line 149
    iget-object v3, p1, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->consideredAttendees:[Lcom/google/calendar/suggest/v2/nano/Attendee;

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v0, v3, v1

    .line 150
    iget-object v5, v0, Lcom/google/calendar/suggest/v2/nano/Attendee;->email:Ljava/lang/String;

    .line 151
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v7, v0, Lcom/google/calendar/suggest/v2/nano/Attendee;->organizer:Ljava/lang/Boolean;

    invoke-virtual {v6, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 152
    iget-object v0, v0, Lcom/google/calendar/suggest/v2/nano/Attendee;->email:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 153
    new-instance v7, Lcom/android/calendar/timely/FindTimeAttendee;

    invoke-direct {v7, v5, v6}, Lcom/android/calendar/timely/FindTimeAttendee;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v7, v0}, Lcom/android/calendar/timely/FindTimeAttendee;->setDisplayName(Ljava/lang/String;)Lcom/android/calendar/timely/FindTimeAttendee;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 149
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Ljava/lang/String;Z)Lcom/android/calendar/timely/net/rendezvous/FindTimeRendezvousClient;
    .locals 4

    .prologue
    .line 76
    new-instance v0, Lcom/android/calendar/timely/net/rendezvous/FindTimeRendezvousClient;

    invoke-direct {v0}, Lcom/android/calendar/timely/net/rendezvous/FindTimeRendezvousClient;-><init>()V

    .line 78
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 79
    const-string v2, "language"

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v3}, Lcom/android/calendar/timely/net/rendezvous/FindTimeRendezvousClient;->toBcp47LanguageIdentifier(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 79
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v2, "account_email"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v2, "is_test_environment"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 83
    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/net/rendezvous/FindTimeRendezvousClient;->setArguments(Landroid/os/Bundle;)V

    .line 85
    return-object v0
.end method

.method static toBcp47LanguageIdentifier(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 536
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/android/calendar/timely/net/FindTimeClientFragment;->onAttach(Landroid/app/Activity;)V

    .line 91
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/net/rendezvous/FindTimeRendezvousClient;->mContext:Landroid/content/Context;

    .line 92
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 96
    invoke-super {p0, p1}, Lcom/android/calendar/timely/net/FindTimeClientFragment;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/calendar/timely/net/rendezvous/FindTimeRendezvousClient;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "language"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/net/rendezvous/FindTimeRendezvousClient;->mLocale:Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/android/calendar/timely/net/rendezvous/FindTimeRendezvousClient;->mRequestExecutor:Lcom/android/calendar/timely/net/rendezvous/FindTimeRequestExecutor;

    if-nez v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/android/calendar/timely/net/rendezvous/FindTimeRendezvousClient;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "account_email"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-virtual {p0}, Lcom/android/calendar/timely/net/rendezvous/FindTimeRendezvousClient;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "is_test_environment"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    new-instance v0, Lcom/android/calendar/timely/net/rendezvous/FakeFindTimeRequestExecutor;

    iget-object v2, p0, Lcom/android/calendar/timely/net/rendezvous/FindTimeRendezvousClient;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/android/calendar/timely/net/rendezvous/FakeFindTimeRequestExecutor;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 103
    :goto_0
    iput-object v0, p0, Lcom/android/calendar/timely/net/rendezvous/FindTimeRendezvousClient;->mRequestExecutor:Lcom/android/calendar/timely/net/rendezvous/FindTimeRequestExecutor;

    .line 105
    :cond_0
    return-void

    .line 103
    :cond_1
    new-instance v0, Lcom/android/calendar/timely/net/rendezvous/FindTimeRequestExecutor;

    iget-object v2, p0, Lcom/android/calendar/timely/net/rendezvous/FindTimeRendezvousClient;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/android/calendar/timely/net/rendezvous/FindTimeRequestExecutor;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected retrieveData(Lcom/android/calendar/timely/net/FindTimeClient$Request;)Lcom/android/calendar/timely/net/FindTimeClientFragment$Data;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendar/timely/FindTimeSuggestionException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 111
    iget-object v2, p1, Lcom/android/calendar/timely/net/FindTimeClient$Request;->timeframe:Lcom/android/calendar/timely/FindTimeTimeframe;

    iget-wide v2, v2, Lcom/android/calendar/timely/FindTimeTimeframe;->startTimeMillis:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 112
    iget-object v2, p1, Lcom/android/calendar/timely/net/FindTimeClient$Request;->timeframe:Lcom/android/calendar/timely/FindTimeTimeframe;

    iget-wide v2, v2, Lcom/android/calendar/timely/FindTimeTimeframe;->endTimeMillis:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 115
    cmp-long v0, v4, v6

    if-ltz v0, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/android/calendar/timely/net/rendezvous/FindTimeRendezvousClient;->createEmptyData()Lcom/android/calendar/timely/net/FindTimeClientFragment$Data;

    move-result-object v0

    .line 138
    :goto_0
    return-object v0

    .line 118
    :cond_0
    iget-object v13, p0, Lcom/android/calendar/timely/net/rendezvous/FindTimeRendezvousClient;->mRequestExecutor:Lcom/android/calendar/timely/net/rendezvous/FindTimeRequestExecutor;

    iget-object v1, p1, Lcom/android/calendar/timely/net/FindTimeClient$Request;->attendees:Lcom/google/common/collect/ImmutableList;

    iget-object v0, p1, Lcom/android/calendar/timely/net/FindTimeClient$Request;->timeframe:Lcom/android/calendar/timely/FindTimeTimeframe;

    iget v2, v0, Lcom/android/calendar/timely/FindTimeTimeframe;->timeframeType:I

    iget-object v0, p1, Lcom/android/calendar/timely/net/FindTimeClient$Request;->timeframe:Lcom/android/calendar/timely/FindTimeTimeframe;

    iget-object v3, v0, Lcom/android/calendar/timely/FindTimeTimeframe;->date:Ljava/lang/Long;

    iget-object v0, p1, Lcom/android/calendar/timely/net/FindTimeClient$Request;->timeframe:Lcom/android/calendar/timely/FindTimeTimeframe;

    iget-wide v8, v0, Lcom/android/calendar/timely/FindTimeTimeframe;->durationMillis:J

    iget-object v10, p1, Lcom/android/calendar/timely/net/FindTimeClient$Request;->timezone:Ljava/util/TimeZone;

    iget-boolean v11, p1, Lcom/android/calendar/timely/net/FindTimeClient$Request;->considerExistingRooms:Z

    iget-object v12, p1, Lcom/android/calendar/timely/net/FindTimeClient$Request;->calendarEventReference:Ljava/lang/String;

    move-object v0, p0

    .line 119
    invoke-direct/range {v0 .. v12}, Lcom/android/calendar/timely/net/rendezvous/FindTimeRendezvousClient;->createRequest(Ljava/util/List;ILjava/lang/Long;JJJLjava/util/TimeZone;ZLjava/lang/String;)Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;

    move-result-object v0

    .line 118
    invoke-virtual {v13, v0}, Lcom/android/calendar/timely/net/rendezvous/FindTimeRequestExecutor;->suggestTime(Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;)Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;

    move-result-object v6

    .line 123
    if-nez v6, :cond_1

    .line 124
    invoke-direct {p0}, Lcom/android/calendar/timely/net/rendezvous/FindTimeRendezvousClient;->createEmptyData()Lcom/android/calendar/timely/net/FindTimeClientFragment$Data;

    move-result-object v0

    goto :goto_0

    .line 127
    :cond_1
    iget-object v0, p1, Lcom/android/calendar/timely/net/FindTimeClient$Request;->attendees:Lcom/google/common/collect/ImmutableList;

    iget-object v1, v6, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->consideredAttendees:[Lcom/google/calendar/suggest/v2/nano/Attendee;

    iget-object v2, v6, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->omittedAttendees:[Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/calendar/timely/net/rendezvous/FindTimeRendezvousClient;->createEmailToDisplayNameMap(Ljava/util/List;[Lcom/google/calendar/suggest/v2/nano/Attendee;[Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;)Ljava/util/Map;

    move-result-object v5

    .line 129
    iget-object v1, v6, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->consideredAttendees:[Lcom/google/calendar/suggest/v2/nano/Attendee;

    iget-object v2, v6, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->omittedAttendees:[Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;

    iget-object v3, p1, Lcom/android/calendar/timely/net/FindTimeClient$Request;->timezone:Ljava/util/TimeZone;

    iget-object v4, v6, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->attendeeEvents:[Lcom/google/calendar/suggest/v2/nano/AttendeeEvents;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/timely/net/rendezvous/FindTimeRendezvousClient;->buildAttendeeMap([Lcom/google/calendar/suggest/v2/nano/Attendee;[Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;Ljava/util/TimeZone;[Lcom/google/calendar/suggest/v2/nano/AttendeeEvents;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 133
    invoke-direct {p0, v6, v5}, Lcom/android/calendar/timely/net/rendezvous/FindTimeRendezvousClient;->getConsideredAttendees(Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;Ljava/util/Map;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 134
    iget-object v1, p1, Lcom/android/calendar/timely/net/FindTimeClient$Request;->timezone:Ljava/util/TimeZone;

    invoke-direct {p0, v6, v1, v0, v2}, Lcom/android/calendar/timely/net/rendezvous/FindTimeRendezvousClient;->convertToSuggestionList(Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;Ljava/util/TimeZone;Ljava/util/Map;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 136
    iget-object v3, v6, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->omittedAttendees:[Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;

    .line 137
    invoke-direct {p0, v3, v0}, Lcom/android/calendar/timely/net/rendezvous/FindTimeRendezvousClient;->convertToOmittedAttendeeList([Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;Ljava/util/Map;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 138
    new-instance v0, Lcom/android/calendar/timely/net/FindTimeClientFragment$Data;

    .line 140
    invoke-direct {p0, v2}, Lcom/android/calendar/timely/net/rendezvous/FindTimeRendezvousClient;->convertToStringList(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 142
    invoke-direct {p0, v6, v1}, Lcom/android/calendar/timely/net/rendezvous/FindTimeRendezvousClient;->getAcceptableSuggestions(Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;Ljava/util/List;)I

    move-result v4

    iget-object v5, v6, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->responseId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/timely/net/FindTimeClientFragment$Data;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic retrieveData(Lcom/android/calendar/timely/net/BaseRequest;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 47
    check-cast p1, Lcom/android/calendar/timely/net/FindTimeClient$Request;

    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/net/rendezvous/FindTimeRendezvousClient;->retrieveData(Lcom/android/calendar/timely/net/FindTimeClient$Request;)Lcom/android/calendar/timely/net/FindTimeClientFragment$Data;

    move-result-object v0

    return-object v0
.end method
