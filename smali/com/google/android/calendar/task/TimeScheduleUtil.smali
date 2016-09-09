.class public Lcom/google/android/calendar/task/TimeScheduleUtil;
.super Ljava/lang/Object;
.source "TimeScheduleUtil.java"


# direct methods
.method static getSecondOfDay(Lcom/google/personalization/assist/annotate/api/nano/TimeEndpoint;)I
    .locals 6

    .prologue
    .line 176
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeEndpoint;->hour:I

    .line 177
    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeEndpoint;->minute:I

    .line 178
    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    long-to-int v0, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, v1

    .line 179
    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 178
    return v0
.end method

.method static isDayOfWeekEndpoint(Lcom/google/personalization/assist/annotate/api/nano/TimeEndpoint;)Z
    .locals 2

    .prologue
    .line 148
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeEndpoint;->day:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeEndpoint;->day:I

    const/4 v1, 0x7

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isDayOfWeekInterval(Lcom/google/personalization/assist/annotate/api/nano/TimeInterval;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 114
    invoke-static {p0}, Lcom/google/android/calendar/task/TimeScheduleUtil;->isStrictInterval(Lcom/google/personalization/assist/annotate/api/nano/TimeInterval;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return v0

    .line 117
    :cond_1
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeInterval;->begin:Lcom/google/personalization/assist/annotate/api/nano/TimeEndpoint;

    .line 118
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeInterval;->end:Lcom/google/personalization/assist/annotate/api/nano/TimeEndpoint;

    .line 119
    invoke-static {v1}, Lcom/google/android/calendar/task/TimeScheduleUtil;->isDayOfWeekEndpoint(Lcom/google/personalization/assist/annotate/api/nano/TimeEndpoint;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/google/android/calendar/task/TimeScheduleUtil;->isDayOfWeekEndpoint(Lcom/google/personalization/assist/annotate/api/nano/TimeEndpoint;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v1, v1, Lcom/google/personalization/assist/annotate/api/nano/TimeEndpoint;->day:I

    iget v2, v2, Lcom/google/personalization/assist/annotate/api/nano/TimeEndpoint;->day:I

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static isInvertedWeeklyComponent(Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 82
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;->interval:[Lcom/google/personalization/assist/annotate/api/nano/TimeInterval;

    array-length v2, v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;->interval:[Lcom/google/personalization/assist/annotate/api/nano/TimeInterval;

    aget-object v2, v2, v1

    .line 83
    invoke-static {v2}, Lcom/google/android/calendar/task/TimeScheduleUtil;->isDayOfWeekInterval(Lcom/google/personalization/assist/annotate/api/nano/TimeInterval;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;->interval:[Lcom/google/personalization/assist/annotate/api/nano/TimeInterval;

    aget-object v2, v2, v0

    .line 84
    invoke-static {v2}, Lcom/google/android/calendar/task/TimeScheduleUtil;->isTimeInterval(Lcom/google/personalization/assist/annotate/api/nano/TimeInterval;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 84
    goto :goto_0
.end method

.method static isStrictInterval(Lcom/google/personalization/assist/annotate/api/nano/TimeInterval;)Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeInterval;->begin:Lcom/google/personalization/assist/annotate/api/nano/TimeEndpoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeInterval;->end:Lcom/google/personalization/assist/annotate/api/nano/TimeEndpoint;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isTimeEndpoint(Lcom/google/personalization/assist/annotate/api/nano/TimeEndpoint;)Z
    .locals 4

    .prologue
    const/16 v3, 0x18

    const/4 v0, 0x1

    .line 159
    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeEndpoint;->hour:I

    .line 160
    iget v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeEndpoint;->minute:I

    .line 161
    if-ne v1, v3, :cond_1

    if-nez v2, :cond_1

    .line 164
    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ltz v1, :cond_2

    if-ge v1, v3, :cond_2

    if-ltz v2, :cond_2

    const/16 v1, 0x3c

    if-lt v2, v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isTimeInterval(Lcom/google/personalization/assist/annotate/api/nano/TimeInterval;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 131
    invoke-static {p0}, Lcom/google/android/calendar/task/TimeScheduleUtil;->isStrictInterval(Lcom/google/personalization/assist/annotate/api/nano/TimeInterval;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 136
    :cond_0
    :goto_0
    return v0

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeInterval;->begin:Lcom/google/personalization/assist/annotate/api/nano/TimeEndpoint;

    .line 135
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeInterval;->end:Lcom/google/personalization/assist/annotate/api/nano/TimeEndpoint;

    .line 136
    invoke-static {v1}, Lcom/google/android/calendar/task/TimeScheduleUtil;->isTimeEndpoint(Lcom/google/personalization/assist/annotate/api/nano/TimeEndpoint;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/google/android/calendar/task/TimeScheduleUtil;->isTimeEndpoint(Lcom/google/personalization/assist/annotate/api/nano/TimeEndpoint;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    invoke-static {v1}, Lcom/google/android/calendar/task/TimeScheduleUtil;->getSecondOfDay(Lcom/google/personalization/assist/annotate/api/nano/TimeEndpoint;)I

    move-result v1

    invoke-static {v2}, Lcom/google/android/calendar/task/TimeScheduleUtil;->getSecondOfDay(Lcom/google/personalization/assist/annotate/api/nano/TimeEndpoint;)I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static isWeeklyComponent(Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 56
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;->interval:[Lcom/google/personalization/assist/annotate/api/nano/TimeInterval;

    array-length v0, v0

    if-nez v0, :cond_1

    move v1, v2

    .line 67
    :cond_0
    :goto_0
    return v1

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;->interval:[Lcom/google/personalization/assist/annotate/api/nano/TimeInterval;

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/google/android/calendar/task/TimeScheduleUtil;->isTimeInterval(Lcom/google/personalization/assist/annotate/api/nano/TimeInterval;)Z

    move-result v0

    if-nez v0, :cond_2

    move v1, v2

    .line 60
    goto :goto_0

    :cond_2
    move v0, v1

    .line 62
    :goto_1
    iget-object v3, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;->interval:[Lcom/google/personalization/assist/annotate/api/nano/TimeInterval;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 63
    iget-object v3, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;->interval:[Lcom/google/personalization/assist/annotate/api/nano/TimeInterval;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/google/android/calendar/task/TimeScheduleUtil;->isDayOfWeekInterval(Lcom/google/personalization/assist/annotate/api/nano/TimeInterval;)Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    .line 64
    goto :goto_0

    .line 62
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static isWeeklySchedule(Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 32
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;->component:[Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 33
    invoke-static {v4}, Lcom/google/android/calendar/task/TimeScheduleUtil;->isInvertedWeeklyComponent(Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;)Z

    move-result v5

    .line 34
    invoke-static {v4}, Lcom/google/android/calendar/task/TimeScheduleUtil;->isWeeklyComponent(Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;)Z

    move-result v4

    if-nez v4, :cond_1

    if-nez v5, :cond_1

    .line 42
    :cond_0
    :goto_1
    return v0

    .line 32
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    :cond_2
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;->component:[Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;

    array-length v1, v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_1
.end method
