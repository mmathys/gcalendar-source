.class public Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator;
.super Ljava/lang/Object;
.source "EventComparator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$MismatchedRemindersNumericEtags;,
        Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$OldEtagFormat;,
        Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$InconsistencyClass;,
        Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$ClassificationResult;,
        Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$Result;
    }
.end annotation


# static fields
.field private static final CLASSES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$InconsistencyClass;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNCLASSIFIED:Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    new-instance v0, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$Result;

    invoke-direct {v0, v2}, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$Result;-><init>(Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$1;)V

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator;->UNCLASSIFIED:Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$Result;

    .line 60
    new-instance v0, Lcom/google/android/calendar/builders/ListBuilder;

    invoke-direct {v0}, Lcom/google/android/calendar/builders/ListBuilder;-><init>()V

    new-instance v1, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$OldEtagFormat;

    invoke-direct {v1, v2}, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$OldEtagFormat;-><init>(Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$1;)V

    .line 61
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/builders/ListBuilder;->add(Ljava/lang/Object;)Lcom/google/android/calendar/builders/ListBuilder;

    move-result-object v0

    new-instance v1, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$MismatchedRemindersNumericEtags;

    invoke-direct {v1, v2}, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$MismatchedRemindersNumericEtags;-><init>(Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$1;)V

    .line 62
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/builders/ListBuilder;->add(Ljava/lang/Object;)Lcom/google/android/calendar/builders/ListBuilder;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/google/android/calendar/builders/ListBuilder;->buildImmutable()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator;->CLASSES:Ljava/util/List;

    .line 60
    return-void
.end method

.method static synthetic access$500(Lcom/google/api/services/calendar/model/Event;)Z
    .locals 1

    .prologue
    .line 18
    invoke-static {p0}, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator;->wasRecentlyUpdated(Lcom/google/api/services/calendar/model/Event;)Z

    move-result v0

    return v0
.end method

.method private static bothNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 121
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static bothNull(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 117
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static compareEvents(Lcom/google/api/services/calendar/model/Event;Lcom/google/api/services/calendar/model/Event;)Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$Result;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 66
    new-instance v0, Lcom/google/android/calendar/builders/ListBuilder;

    invoke-direct {v0}, Lcom/google/android/calendar/builders/ListBuilder;-><init>()V

    .line 67
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event;->getEtag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Event;->getEtag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    const-string v1, "ETAG"

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/builders/ListBuilder;->add(Ljava/lang/Object;)Lcom/google/android/calendar/builders/ListBuilder;

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Event;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 71
    const-string v1, "STATUS"

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/builders/ListBuilder;->add(Ljava/lang/Object;)Lcom/google/android/calendar/builders/ListBuilder;

    .line 73
    :cond_1
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Event;->getSummary()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 73
    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 75
    const-string v1, "SUMMARY"

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/builders/ListBuilder;->add(Ljava/lang/Object;)Lcom/google/android/calendar/builders/ListBuilder;

    .line 77
    :cond_2
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Event;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 77
    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 79
    const-string v1, "DESCRIPTION"

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/builders/ListBuilder;->add(Ljava/lang/Object;)Lcom/google/android/calendar/builders/ListBuilder;

    .line 81
    :cond_3
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event;->getStart()Lcom/google/api/services/calendar/model/EventDateTime;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Event;->getStart()Lcom/google/api/services/calendar/model/EventDateTime;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator;->equalEventDateTimes(Lcom/google/api/services/calendar/model/EventDateTime;Lcom/google/api/services/calendar/model/EventDateTime;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 82
    const-string v1, "START"

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/builders/ListBuilder;->add(Ljava/lang/Object;)Lcom/google/android/calendar/builders/ListBuilder;

    .line 84
    :cond_4
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event;->getEnd()Lcom/google/api/services/calendar/model/EventDateTime;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Event;->getEnd()Lcom/google/api/services/calendar/model/EventDateTime;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator;->equalEventDateTimes(Lcom/google/api/services/calendar/model/EventDateTime;Lcom/google/api/services/calendar/model/EventDateTime;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 85
    const-string v1, "END"

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/builders/ListBuilder;->add(Ljava/lang/Object;)Lcom/google/android/calendar/builders/ListBuilder;

    .line 87
    :cond_5
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event;->getRecurringEventId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Event;->getRecurringEventId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 88
    const-string v1, "RECURRING_EVENT_ID"

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/builders/ListBuilder;->add(Ljava/lang/Object;)Lcom/google/android/calendar/builders/ListBuilder;

    .line 90
    :cond_6
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Event;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 92
    const-string v1, "LOCATION"

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/builders/ListBuilder;->add(Ljava/lang/Object;)Lcom/google/android/calendar/builders/ListBuilder;

    .line 94
    :cond_7
    invoke-virtual {v0}, Lcom/google/android/calendar/builders/ListBuilder;->buildImmutable()Ljava/util/List;

    move-result-object v3

    .line 96
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    move v1, v0

    .line 97
    :goto_0
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator;->CLASSES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$InconsistencyClass;

    .line 99
    invoke-interface {v0, v3, p0, p1}, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$InconsistencyClass;->classify(Ljava/util/List;Lcom/google/api/services/calendar/model/Event;Lcom/google/api/services/calendar/model/Event;)Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$ClassificationResult;

    move-result-object v5

    .line 100
    iget-boolean v6, v5, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$ClassificationResult;->mBelongsToClass:Z

    if-eqz v6, :cond_8

    .line 102
    iget-boolean v1, v5, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$ClassificationResult;->mShouldReport:Z

    .line 106
    :goto_1
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 109
    :goto_2
    new-instance v4, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$Result;

    invoke-direct {v4, v3, v0, v1, v2}, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$Result;-><init>(Ljava/util/List;Ljava/lang/String;ZLcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$1;)V

    return-object v4

    .line 96
    :cond_9
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 107
    :cond_a
    const-string v0, "Unclassified"

    goto :goto_2

    :cond_b
    move-object v0, v2

    goto :goto_1
.end method

.method private static equalDateTimes(Lcom/google/api/client/util/DateTime;Lcom/google/api/client/util/DateTime;)Z
    .locals 4

    .prologue
    .line 136
    invoke-static {p0, p1}, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator;->bothNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const/4 v0, 0x1

    .line 143
    :goto_0
    return v0

    .line 139
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator;->bothNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 140
    const/4 v0, 0x0

    goto :goto_0

    .line 143
    :cond_1
    invoke-virtual {p0}, Lcom/google/api/client/util/DateTime;->getValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/api/client/util/DateTime;->getValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static equalEventDateTimes(Lcom/google/api/services/calendar/model/EventDateTime;Lcom/google/api/services/calendar/model/EventDateTime;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 125
    invoke-static {p0, p1}, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator;->bothNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v0

    .line 128
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator;->bothNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 129
    goto :goto_0

    .line 131
    :cond_2
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventDateTime;->getDateTime()Lcom/google/api/client/util/DateTime;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/EventDateTime;->getDateTime()Lcom/google/api/client/util/DateTime;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator;->equalDateTimes(Lcom/google/api/client/util/DateTime;Lcom/google/api/client/util/DateTime;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 132
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventDateTime;->getDate()Lcom/google/api/client/util/DateTime;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/EventDateTime;->getDate()Lcom/google/api/client/util/DateTime;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator;->equalDateTimes(Lcom/google/api/client/util/DateTime;Lcom/google/api/client/util/DateTime;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private static nullToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 113
    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method private static wasRecentlyUpdated(Lcom/google/api/services/calendar/model/Event;)Z
    .locals 6

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event;->getUpdated()Lcom/google/api/client/util/DateTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/util/DateTime;->getValue()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x337f9800

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
