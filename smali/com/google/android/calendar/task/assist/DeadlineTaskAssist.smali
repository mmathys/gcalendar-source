.class public Lcom/google/android/calendar/task/assist/DeadlineTaskAssist;
.super Lcom/google/android/calendar/task/assist/TaskAssistHolder;
.source "DeadlineTaskAssist.java"


# static fields
.field private static final ONE_DAY_MS:J


# instance fields
.field private final flair:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 19
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/calendar/task/assist/DeadlineTaskAssist;->ONE_DAY_MS:J

    return-void
.end method

.method public constructor <init>(Lcom/google/personalization/assist/annotate/api/nano/Assistance;I)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/google/android/calendar/task/assist/TaskAssistHolder;-><init>(Lcom/google/personalization/assist/annotate/api/nano/Assistance;I)V

    .line 25
    invoke-static {p2}, Lcom/google/android/calendar/task/TaskAssistanceUtils;->getFlairForGrammarRuleType(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/task/assist/DeadlineTaskAssist;->flair:Ljava/lang/String;

    .line 26
    const-string v0, "deadline"

    iput-object v0, p0, Lcom/google/android/calendar/task/assist/DeadlineTaskAssist;->mAnalyticsLabel:Ljava/lang/String;

    .line 27
    return-void
.end method

.method private getDaysUntilDeadline()I
    .locals 10

    .prologue
    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 73
    iget-object v2, p0, Lcom/google/android/calendar/task/assist/DeadlineTaskAssist;->mAssistance:Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    iget-object v2, v2, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->deadlineAssistance:Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;

    iget-object v2, v2, Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;->eventTime:Lcom/google/personalization/assist/annotate/api/nano/EventTime;

    iget-object v2, v2, Lcom/google/personalization/assist/annotate/api/nano/EventTime;->startTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 74
    iget-object v3, p0, Lcom/google/android/calendar/task/assist/DeadlineTaskAssist;->mAssistance:Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    iget-object v3, v3, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->deadlineAssistance:Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;

    iget-object v3, v3, Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;->eventTime:Lcom/google/personalization/assist/annotate/api/nano/EventTime;

    iget-object v4, v3, Lcom/google/personalization/assist/annotate/api/nano/EventTime;->endTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 77
    invoke-direct {p0, v0, v1}, Lcom/google/android/calendar/task/assist/DeadlineTaskAssist;->roundToStartOfDay(J)J

    move-result-wide v6

    .line 78
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    int-to-long v0, v0

    .line 79
    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/calendar/task/assist/DeadlineTaskAssist;->getStartOfDayTimeMsInUserTimeZone(Lcom/google/personalization/assist/annotate/api/nano/Time;J)J

    move-result-wide v8

    .line 82
    const-wide/16 v2, 0x0

    .line 83
    cmp-long v5, v6, v8

    if-gez v5, :cond_0

    .line 85
    sub-long v0, v8, v6

    .line 98
    :goto_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    .line 86
    :cond_0
    if-eqz v4, :cond_2

    .line 87
    invoke-direct {p0, v4, v0, v1}, Lcom/google/android/calendar/task/assist/DeadlineTaskAssist;->getStartOfDayTimeMsInUserTimeZone(Lcom/google/personalization/assist/annotate/api/nano/Time;J)J

    move-result-wide v0

    .line 88
    iget-boolean v4, v4, Lcom/google/personalization/assist/annotate/api/nano/Time;->dateOnly:Z

    if-nez v4, :cond_1

    .line 90
    sget-wide v4, Lcom/google/android/calendar/task/assist/DeadlineTaskAssist;->ONE_DAY_MS:J

    add-long/2addr v0, v4

    .line 92
    :cond_1
    sget-wide v4, Lcom/google/android/calendar/task/assist/DeadlineTaskAssist;->ONE_DAY_MS:J

    add-long/2addr v4, v6

    .line 93
    cmp-long v6, v4, v0

    if-lez v6, :cond_2

    .line 95
    sub-long/2addr v0, v4

    goto :goto_0

    :cond_2
    move-wide v0, v2

    goto :goto_0
.end method

.method private getStartOfDayTimeMsInUserTimeZone(Lcom/google/personalization/assist/annotate/api/nano/Time;J)J
    .locals 6

    .prologue
    .line 116
    iget-wide v0, p1, Lcom/google/personalization/assist/annotate/api/nano/Time;->timeMs:J

    .line 117
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    iget v3, p1, Lcom/google/personalization/assist/annotate/api/nano/Time;->timeZoneOffsetMinutes:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 121
    add-long/2addr v0, v2

    sub-long/2addr v0, p2

    .line 127
    iget-boolean v2, p1, Lcom/google/personalization/assist/annotate/api/nano/Time;->dateOnly:Z

    if-eqz v2, :cond_0

    :goto_0
    return-wide v0

    .line 129
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/google/android/calendar/task/assist/DeadlineTaskAssist;->roundToStartOfDay(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method private roundToStartOfDay(J)J
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 102
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 103
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 104
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 105
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 106
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 107
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 108
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public getAssistActionText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAssistInfoText(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/android/calendar/task/assist/DeadlineTaskAssist;->getDaysUntilDeadline()I

    move-result v0

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$plurals;->task_assist_days_left:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 37
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget v0, Lcom/android/calendar/R$string;->describe_event_icon:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/task/assist/DeadlineTaskAssist;->getAssistInfoText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 53
    sget v0, Lcom/android/calendar/R$drawable;->quantum_ic_event_grey600_24:I

    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/calendar/task/assist/DeadlineTaskAssist;->flair:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->getAssistFlairUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public gotoAssist(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public isClickable(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method
