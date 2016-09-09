.class public Lcom/android/calendar/timely/net/exchange/FindTimeExchangeClient;
.super Lcom/android/calendar/timely/net/FindTimeClientFragment;
.source "FindTimeExchangeClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/net/exchange/FindTimeExchangeClient$AttendeePenaltyComparator;,
        Lcom/android/calendar/timely/net/exchange/FindTimeExchangeClient$TimelineSuggestionComparator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAccountEmail:Ljava/lang/String;

.field private final mAttendeePenaltyComparator:Lcom/android/calendar/timely/net/exchange/FindTimeExchangeClient$AttendeePenaltyComparator;

.field private final mContext:Landroid/content/Context;

.field private final mSuggestionComparator:Lcom/android/calendar/timely/net/exchange/FindTimeExchangeClient$TimelineSuggestionComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/android/calendar/timely/net/exchange/FindTimeExchangeClient;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/net/exchange/FindTimeExchangeClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/calendar/timely/net/FindTimeClientFragment;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/android/calendar/timely/net/exchange/FindTimeExchangeClient;->mContext:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lcom/android/calendar/timely/net/exchange/FindTimeExchangeClient;->mAccountEmail:Ljava/lang/String;

    .line 84
    new-instance v0, Lcom/android/calendar/timely/net/exchange/FindTimeExchangeClient$TimelineSuggestionComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/calendar/timely/net/exchange/FindTimeExchangeClient$TimelineSuggestionComparator;-><init>(Lcom/android/calendar/timely/net/exchange/FindTimeExchangeClient$1;)V

    iput-object v0, p0, Lcom/android/calendar/timely/net/exchange/FindTimeExchangeClient;->mSuggestionComparator:Lcom/android/calendar/timely/net/exchange/FindTimeExchangeClient$TimelineSuggestionComparator;

    .line 85
    new-instance v0, Lcom/android/calendar/timely/net/exchange/FindTimeExchangeClient$AttendeePenaltyComparator;

    iget-object v1, p0, Lcom/android/calendar/timely/net/exchange/FindTimeExchangeClient;->mAccountEmail:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/calendar/timely/net/exchange/FindTimeExchangeClient$AttendeePenaltyComparator;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/timely/net/exchange/FindTimeExchangeClient;->mAttendeePenaltyComparator:Lcom/android/calendar/timely/net/exchange/FindTimeExchangeClient$AttendeePenaltyComparator;

    .line 86
    return-void
.end method

.method private convertToConsideredAttendeesList(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/emailcommon/provider/RecipientAvailability;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    new-instance v1, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v1}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 183
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/RecipientAvailability;

    .line 184
    iget-object v0, v0, Lcom/android/emailcommon/provider/RecipientAvailability;->emailAddress:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method private getAttendeeStatuses(Lcom/android/emailcommon/provider/RecipientAvailability;)[I
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v1, 0x0

    .line 388
    iget-object v0, p1, Lcom/android/emailcommon/provider/RecipientAvailability;->mergedFreeBusy:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 389
    new-array v3, v2, [I

    move v0, v1

    .line 390
    :goto_0
    if-ge v0, v2, :cond_0

    .line 391
    iget-object v4, p1, Lcom/android/emailcommon/provider/RecipientAvailability;->mergedFreeBusy:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    .line 392
    packed-switch v4, :pswitch_data_0

    .line 410
    aput v5, v3, v0

    .line 390
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 394
    :pswitch_0
    aput v1, v3, v0

    goto :goto_1

    .line 397
    :pswitch_1
    const/4 v4, 0x1

    aput v4, v3, v0

    goto :goto_1

    .line 400
    :pswitch_2
    const/4 v4, 0x2

    aput v4, v3, v0

    goto :goto_1

    .line 403
    :pswitch_3
    const/4 v4, 0x3

    aput v4, v3, v0

    goto :goto_1

    .line 407
    :pswitch_4
    aput v5, v3, v0

    goto :goto_1

    .line 415
    :cond_0
    return-object v3

    .line 392
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private isInsideWorkingHour(Ljava/util/Calendar;J)Z
    .locals 6

    .prologue
    const/16 v5, 0x15

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x7

    .line 364
    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 366
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 367
    if-eq v2, v4, :cond_0

    if-ne v2, v0, :cond_2

    :cond_0
    move v0, v1

    .line 379
    :cond_1
    :goto_0
    return v0

    .line 371
    :cond_2
    const/16 v2, 0xb

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 372
    const/16 v3, 0xc

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 373
    if-lt v2, v4, :cond_4

    if-ne v2, v5, :cond_3

    if-gtz v3, :cond_4

    :cond_3
    if-le v2, v5, :cond_1

    :cond_4
    move v0, v1

    .line 376
    goto :goto_0
.end method

.method private roundUpTimeWindow(J)J
    .locals 7

    .prologue
    const-wide/32 v4, 0x1b7740

    .line 383
    add-long v0, p1, v4

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    div-long/2addr v0, v4

    mul-long/2addr v0, v4

    return-wide v0
.end method


# virtual methods
.method acceptableSuggestionCount(Ljava/util/List;I)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/TimelineSuggestion;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 170
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    int-to-double v2, p2

    mul-double v4, v0, v2

    .line 171
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 172
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 173
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineSuggestion;

    iget-wide v6, v0, Lcom/android/calendar/timely/TimelineSuggestion;->totalPenalty:D

    cmpl-double v0, v6, v4

    if-lez v0, :cond_0

    move v0, v1

    .line 177
    :goto_1
    return v0

    .line 172
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 177
    goto :goto_1
.end method

.method calculateSuggestionSlotPenalty(Ljava/util/List;Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/TimelineSuggestion;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/FindTimeAttendee;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 319
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/timely/TimelineSuggestion;

    .line 320
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 322
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 324
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/timely/FindTimeAttendee;

    .line 326
    const-wide/16 v4, 0x0

    .line 327
    invoke-virtual {v3}, Lcom/android/calendar/timely/FindTimeAttendee;->getAllEvents()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-wide v6, v4

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/calendar/timely/TimelineAttendeeEvent;

    move-object v5, v4

    .line 328
    check-cast v5, Lcom/android/calendar/timely/TimelineExchangeAttendeeEvent;

    .line 330
    iget-wide v14, v2, Lcom/android/calendar/timely/TimelineSuggestion;->startMillis:J

    iget-wide v0, v4, Lcom/android/calendar/timely/TimelineAttendeeEvent;->endMillis:J

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-gez v13, :cond_0

    iget-wide v14, v4, Lcom/android/calendar/timely/TimelineAttendeeEvent;->startMillis:J

    iget-wide v0, v2, Lcom/android/calendar/timely/TimelineSuggestion;->endMillis:J

    move-wide/from16 v16, v0

    cmp-long v4, v14, v16

    if-gez v4, :cond_0

    .line 334
    invoke-virtual {v5}, Lcom/android/calendar/timely/TimelineExchangeAttendeeEvent;->getPenalty()D

    move-result-wide v4

    add-double/2addr v6, v4

    .line 335
    invoke-interface {v9, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    move-wide v4, v6

    move-wide v6, v4

    .line 337
    goto :goto_2

    .line 339
    :cond_1
    iget-wide v4, v2, Lcom/android/calendar/timely/TimelineSuggestion;->totalPenalty:D

    add-double/2addr v4, v6

    iput-wide v4, v2, Lcom/android/calendar/timely/TimelineSuggestion;->totalPenalty:D

    .line 340
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 343
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/timely/net/exchange/FindTimeExchangeClient;->mAttendeePenaltyComparator:Lcom/android/calendar/timely/net/exchange/FindTimeExchangeClient$AttendeePenaltyComparator;

    invoke-static {v10, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 344
    new-instance v4, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v4}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 346
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 347
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/calendar/timely/FindTimeAttendee;

    invoke-virtual {v4, v3}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_3

    .line 349
    :cond_3
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/calendar/timely/TimelineSuggestion;->setAttendees(Lcom/google/common/collect/ImmutableList;)Lcom/android/calendar/timely/TimelineSuggestion;

    .line 351
    invoke-static {v9}, Lcom/android/calendar/timely/FindTimeUtil;->convertToExplanationForExchange(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 350
    invoke-virtual {v2, v3}, Lcom/android/calendar/timely/TimelineSuggestion;->setAttendeeExplanations(Lcom/google/common/collect/ImmutableList;)Lcom/android/calendar/timely/TimelineSuggestion;

    goto/16 :goto_0

    .line 353
    :cond_4
    return-void
.end method

.method convertToFindTimeAttendees(JLjava/util/List;Ljava/util/TimeZone;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Lcom/android/emailcommon/provider/RecipientAvailability;",
            ">;",
            "Ljava/util/TimeZone;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/FindTimeAttendee;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 202
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/provider/RecipientAvailability;

    .line 203
    new-instance v8, Lcom/android/calendar/timely/FindTimeAttendee;

    iget-object v3, v2, Lcom/android/emailcommon/provider/RecipientAvailability;->emailAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/timely/net/exchange/FindTimeExchangeClient;->mAccountEmail:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/emailcommon/provider/RecipientAvailability;->emailAddress:Ljava/lang/String;

    .line 205
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-direct {v8, v3, v4}, Lcom/android/calendar/timely/FindTimeAttendee;-><init>(Ljava/lang/String;Z)V

    .line 206
    iget-object v3, v2, Lcom/android/emailcommon/provider/RecipientAvailability;->displayName:Ljava/lang/String;

    invoke-virtual {v8, v3}, Lcom/android/calendar/timely/FindTimeAttendee;->setDisplayName(Ljava/lang/String;)Lcom/android/calendar/timely/FindTimeAttendee;

    .line 208
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 209
    iget-object v3, v2, Lcom/android/emailcommon/provider/RecipientAvailability;->mergedFreeBusy:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 210
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/calendar/timely/net/exchange/FindTimeExchangeClient;->getAttendeeStatuses(Lcom/android/emailcommon/provider/RecipientAvailability;)[I

    move-result-object v10

    .line 212
    const/4 v4, 0x0

    .line 213
    const/4 v3, -0x1

    .line 214
    const/4 v2, 0x0

    move/from16 v16, v2

    move-object v2, v4

    move v4, v3

    move/from16 v3, v16

    :goto_1
    array-length v5, v10

    if-ge v3, v5, :cond_2

    .line 215
    aget v5, v10, v3

    .line 219
    if-eqz v5, :cond_1

    .line 220
    if-eq v5, v4, :cond_0

    .line 221
    new-instance v2, Lcom/android/calendar/timely/TimelineExchangeAttendeeEvent;

    invoke-direct {v2}, Lcom/android/calendar/timely/TimelineExchangeAttendeeEvent;-><init>()V

    .line 222
    const-wide/32 v12, 0x1b7740

    int-to-long v14, v3

    mul-long/2addr v12, v14

    add-long v12, v12, p1

    iput-wide v12, v2, Lcom/android/calendar/timely/TimelineExchangeAttendeeEvent;->startMillis:J

    .line 224
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/timely/net/exchange/FindTimeExchangeClient;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v2, v4, v5}, Lcom/android/calendar/timely/TimelineExchangeAttendeeEvent;->setStatus(Landroid/content/res/Resources;I)V

    .line 225
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_0
    if-eqz v2, :cond_1

    .line 229
    const-wide/32 v12, 0x1b7740

    add-int/lit8 v4, v3, 0x1

    int-to-long v14, v4

    mul-long/2addr v12, v14

    add-long v12, v12, p1

    iput-wide v12, v2, Lcom/android/calendar/timely/TimelineExchangeAttendeeEvent;->endMillis:J

    .line 214
    :cond_1
    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_1

    .line 238
    :cond_2
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/timely/TimelineAttendeeEvent;

    .line 239
    move-object/from16 v0, p4

    invoke-static {v2, v0}, Lcom/android/calendar/timely/FindTimeUtil;->setTimeFieldsBasedOnMillis(Lcom/android/calendar/timely/TimelineEvent;Ljava/util/TimeZone;)V

    goto :goto_2

    .line 241
    :cond_3
    sget-object v2, Lcom/android/calendar/timely/TimelineItem;->ItemComparator:Ljava/util/Comparator;

    invoke-static {v9, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 242
    invoke-static {v9}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/android/calendar/timely/FindTimeAttendee;->setEvents(Ljava/util/List;)Lcom/android/calendar/timely/FindTimeAttendee;

    .line 243
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 246
    :cond_4
    return-object v6
.end method

.method convertToOmittedAttendees(Ljava/util/List;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/FindTimeAttendee;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/calendar/timely/OmittedAttendee;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 258
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 259
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 260
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 262
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/FindTimeAttendee;

    .line 263
    invoke-virtual {v0}, Lcom/android/calendar/timely/FindTimeAttendee;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 267
    new-instance v4, Lcom/android/calendar/timely/OmittedAttendee;

    invoke-virtual {v0}, Lcom/android/calendar/timely/FindTimeAttendee;->getEmail()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/calendar/timely/FindTimeAttendee;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v0, v6}, Lcom/android/calendar/timely/OmittedAttendee;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 269
    invoke-virtual {v1, v4}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_1

    .line 271
    :cond_2
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method getAllTimelineSuggestionSlots(JJJLjava/util/TimeZone;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/TimeZone;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/TimelineSuggestion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 285
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 287
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 288
    invoke-virtual {v5, p7}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 293
    const-wide/32 v0, 0x1b7740

    add-long/2addr v0, p1

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1b7740

    div-long/2addr v0, v2

    const-wide/32 v2, 0x1b7740

    mul-long/2addr v2, v0

    .line 295
    add-long v0, v2, p5

    .line 298
    :goto_0
    cmp-long v6, v0, p3

    if-gez v6, :cond_1

    .line 299
    invoke-direct {p0, v5, v2, v3}, Lcom/android/calendar/timely/net/exchange/FindTimeExchangeClient;->isInsideWorkingHour(Ljava/util/Calendar;J)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 300
    invoke-direct {p0, v5, v0, v1}, Lcom/android/calendar/timely/net/exchange/FindTimeExchangeClient;->isInsideWorkingHour(Ljava/util/Calendar;J)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 301
    new-instance v6, Lcom/android/calendar/timely/TimelineSuggestion;

    invoke-direct {v6}, Lcom/android/calendar/timely/TimelineSuggestion;-><init>()V

    .line 302
    iput-wide v2, v6, Lcom/android/calendar/timely/TimelineSuggestion;->startMillis:J

    .line 303
    iput-wide v0, v6, Lcom/android/calendar/timely/TimelineSuggestion;->endMillis:J

    .line 304
    invoke-static {v6, p7}, Lcom/android/calendar/timely/FindTimeUtil;->setTimeFieldsBasedOnMillis(Lcom/android/calendar/timely/TimelineEvent;Ljava/util/TimeZone;)V

    .line 305
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    :cond_0
    const-wide/32 v0, 0x1b7740

    add-long/2addr v2, v0

    .line 310
    add-long v0, v2, p5

    goto :goto_0

    .line 313
    :cond_1
    return-object v4
.end method

.method protected retrieveData(Lcom/android/calendar/timely/net/FindTimeClient$Request;)Lcom/android/calendar/timely/net/FindTimeClientFragment$Data;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendar/timely/FindTimeSuggestionException;
        }
    .end annotation

    .prologue
    .line 90
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/calendar/timely/net/FindTimeClient$Request;->attendees:Lcom/google/common/collect/ImmutableList;

    .line 91
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 92
    :cond_0
    new-instance v2, Lcom/android/calendar/timely/net/FindTimeClientFragment$Data;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 93
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    .line 94
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/calendar/timely/net/FindTimeClientFragment$Data;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;ILjava/lang/String;)V

    .line 150
    :goto_0
    return-object v2

    .line 98
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v12}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 99
    invoke-virtual {v12}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/timely/FindTimeAttendee;

    .line 100
    invoke-virtual {v2}, Lcom/android/calendar/timely/FindTimeAttendee;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 103
    :cond_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/calendar/timely/net/FindTimeClient$Request;->timeframe:Lcom/android/calendar/timely/FindTimeTimeframe;

    iget-wide v2, v2, Lcom/android/calendar/timely/FindTimeTimeframe;->startTimeMillis:J

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/calendar/timely/net/exchange/FindTimeExchangeClient;->roundUpTimeWindow(J)J

    move-result-wide v14

    .line 104
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/calendar/timely/net/FindTimeClient$Request;->timeframe:Lcom/android/calendar/timely/FindTimeTimeframe;

    iget-wide v2, v2, Lcom/android/calendar/timely/FindTimeTimeframe;->endTimeMillis:J

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/calendar/timely/net/exchange/FindTimeExchangeClient;->roundUpTimeWindow(J)J

    move-result-wide v16

    .line 105
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/calendar/timely/net/FindTimeClient$Request;->timeframe:Lcom/android/calendar/timely/FindTimeTimeframe;

    iget-wide v0, v2, Lcom/android/calendar/timely/FindTimeTimeframe;->durationMillis:J

    move-wide/from16 v18, v0

    .line 109
    const-wide/32 v2, 0x5265c00

    sub-long v6, v14, v2

    .line 110
    const-wide/32 v2, 0x5265c00

    add-long v8, v14, v2

    .line 112
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/timely/net/exchange/FindTimeExchangeClient;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/timely/net/exchange/FindTimeExchangeClient;->mContext:Landroid/content/Context;

    .line 113
    invoke-static {v3}, Lcom/android/calendar/timely/FindTimeUtil;->getEasServiceSupportPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 112
    invoke-static {v2, v3}, Lcom/android/calendar/timely/ExchangeUtil;->getEasServiceProxy(Landroid/content/Context;Ljava/lang/String;)Lcom/android/emailcommon/service/EmailServiceProxy;

    move-result-object v3

    .line 114
    if-nez v3, :cond_3

    .line 117
    new-instance v2, Lcom/android/calendar/timely/FindTimeSuggestionException;

    const-string v3, "No EasServiceProxy is available"

    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-direct {v2, v3, v4}, Lcom/android/calendar/timely/FindTimeSuggestionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 120
    :cond_3
    const/4 v10, 0x0

    .line 122
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/timely/net/exchange/FindTimeExchangeClient;->mAccountEmail:Ljava/lang/String;

    invoke-interface/range {v3 .. v9}, Lcom/android/emailcommon/service/EmailServiceProxy;->retrieveRecipientAvailabilities(Ljava/lang/String;Ljava/util/List;JJ)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 128
    :goto_2
    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/timely/net/exchange/FindTimeExchangeClient;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/calendar/Utils;->isConnectedToInternet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 130
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    move-object v11, v2

    .line 133
    :goto_3
    if-eqz v11, :cond_5

    .line 134
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/calendar/timely/net/FindTimeClient$Request;->timezone:Ljava/util/TimeZone;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v11, v2}, Lcom/android/calendar/timely/net/exchange/FindTimeExchangeClient;->convertToFindTimeAttendees(JLjava/util/List;Ljava/util/TimeZone;)Ljava/util/List;

    move-result-object v2

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/calendar/timely/net/FindTimeClient$Request;->timezone:Ljava/util/TimeZone;

    move-object/from16 v3, p0

    move-wide/from16 v6, v16

    move-wide/from16 v8, v18

    .line 136
    invoke-virtual/range {v3 .. v10}, Lcom/android/calendar/timely/net/exchange/FindTimeExchangeClient;->getAllTimelineSuggestionSlots(JJJLjava/util/TimeZone;)Ljava/util/List;

    move-result-object v6

    .line 139
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v2}, Lcom/android/calendar/timely/net/exchange/FindTimeExchangeClient;->calculateSuggestionSlotPenalty(Ljava/util/List;Ljava/util/List;)V

    .line 140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/timely/net/exchange/FindTimeExchangeClient;->mSuggestionComparator:Lcom/android/calendar/timely/net/exchange/FindTimeExchangeClient$TimelineSuggestionComparator;

    invoke-static {v6, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 142
    new-instance v5, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v5}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 144
    const/4 v2, 0x0

    move v3, v2

    :goto_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_4

    const/16 v2, 0xa

    if-ge v3, v2, :cond_4

    .line 145
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/timely/TimelineSuggestion;

    invoke-virtual {v5, v2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 144
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_4

    .line 124
    :catch_0
    move-exception v2

    .line 125
    sget-object v3, Lcom/android/calendar/timely/net/exchange/FindTimeExchangeClient;->TAG:Ljava/lang/String;

    const-string v4, "retrieveRecipientAvalabilities failed"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v2, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v2, v10

    goto :goto_2

    .line 149
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/calendar/timely/net/exchange/FindTimeExchangeClient;->convertToConsideredAttendeesList(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    .line 150
    new-instance v2, Lcom/android/calendar/timely/net/FindTimeClientFragment$Data;

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 152
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v4}, Lcom/android/calendar/timely/net/exchange/FindTimeExchangeClient;->convertToOmittedAttendees(Ljava/util/List;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    .line 153
    invoke-virtual {v12}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/android/calendar/timely/net/exchange/FindTimeExchangeClient;->acceptableSuggestionCount(Ljava/util/List;I)I

    move-result v6

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/calendar/timely/net/FindTimeClientFragment$Data;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 158
    :cond_5
    new-instance v2, Lcom/android/calendar/timely/FindTimeSuggestionException;

    const-string v3, "Failed to retrieve recipient availabilities"

    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    invoke-direct {v2, v3, v4}, Lcom/android/calendar/timely/FindTimeSuggestionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_6
    move-object v11, v2

    goto/16 :goto_3
.end method

.method protected bridge synthetic retrieveData(Lcom/android/calendar/timely/net/BaseRequest;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 38
    check-cast p1, Lcom/android/calendar/timely/net/FindTimeClient$Request;

    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/net/exchange/FindTimeExchangeClient;->retrieveData(Lcom/android/calendar/timely/net/FindTimeClient$Request;)Lcom/android/calendar/timely/net/FindTimeClientFragment$Data;

    move-result-object v0

    return-object v0
.end method
