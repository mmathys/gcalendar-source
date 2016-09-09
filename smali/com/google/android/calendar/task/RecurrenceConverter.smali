.class public Lcom/google/android/calendar/task/RecurrenceConverter;
.super Ljava/lang/Object;
.source "RecurrenceConverter.java"


# direct methods
.method static synthetic access$000(I)I
    .locals 1

    .prologue
    .line 29
    invoke-static {p0}, Lcom/google/android/calendar/task/RecurrenceConverter;->toEventRecurrenceWeekday(I)I

    move-result v0

    return v0
.end method

.method private static addMonthdaysOnEventRecurrence(Lcom/android/calendarcommon2/EventRecurrence;Lcom/google/android/gms/reminders/model/Recurrence;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 195
    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Recurrence;->getMonthlyPattern()Lcom/google/android/gms/reminders/model/MonthlyPattern;

    move-result-object v3

    .line 196
    if-nez v3, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    invoke-interface {v3}, Lcom/google/android/gms/reminders/model/MonthlyPattern;->getMonthDay()Ljava/util/List;

    move-result-object v4

    .line 201
    if-eqz v4, :cond_3

    .line 202
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 203
    new-array v6, v5, [I

    move v1, v2

    .line 205
    :goto_1
    if-ge v1, v5, :cond_2

    .line 206
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v6, v1

    .line 205
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 208
    :cond_2
    iput v5, p0, Lcom/android/calendarcommon2/EventRecurrence;->bymonthdayCount:I

    .line 209
    iput-object v6, p0, Lcom/android/calendarcommon2/EventRecurrence;->bymonthday:[I

    .line 212
    :cond_3
    invoke-interface {v3}, Lcom/google/android/gms/reminders/model/MonthlyPattern;->getWeekDay()Ljava/lang/Integer;

    move-result-object v0

    .line 213
    invoke-interface {v3}, Lcom/google/android/gms/reminders/model/MonthlyPattern;->getWeekDayNumber()Ljava/lang/Integer;

    move-result-object v1

    .line 214
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 220
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x5

    if-gt v3, v4, :cond_4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x1

    if-ge v3, v4, :cond_5

    .line 221
    :cond_4
    iput v2, p0, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    .line 222
    const-string v0, "RecurrenceConverter"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x17

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Invalid weekdayNumber: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 224
    :cond_5
    iput v7, p0, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    .line 225
    new-array v3, v7, [I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/calendar/task/RecurrenceConverter;->toEventRecurrenceWeekday(I)I

    move-result v0

    aput v0, v3, v2

    iput-object v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->byday:[I

    .line 226
    new-array v0, v7, [I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v0, v2

    iput-object v0, p0, Lcom/android/calendarcommon2/EventRecurrence;->bydayNum:[I

    goto/16 :goto_0
.end method

.method private static addMonthsOnEventRecurrence(Lcom/android/calendarcommon2/EventRecurrence;Lcom/google/android/gms/reminders/model/Recurrence;)V
    .locals 5

    .prologue
    .line 236
    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Recurrence;->getYearlyPattern()Lcom/google/android/gms/reminders/model/YearlyPattern;

    move-result-object v0

    .line 237
    if-nez v0, :cond_0

    .line 250
    :goto_0
    return-void

    .line 241
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/YearlyPattern;->getYearMonth()Ljava/util/List;

    move-result-object v2

    .line 242
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 243
    new-array v4, v3, [I

    .line 245
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_1

    .line 246
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v4, v1

    .line 245
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 248
    :cond_1
    iput v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->bymonthCount:I

    .line 249
    iput-object v4, p0, Lcom/android/calendarcommon2/EventRecurrence;->bymonth:[I

    goto :goto_0
.end method

.method private static addWeekdaysOnEventRecurrence(Lcom/android/calendarcommon2/EventRecurrence;Lcom/google/android/gms/reminders/model/Recurrence;)V
    .locals 6

    .prologue
    .line 159
    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Recurrence;->getWeeklyPattern()Lcom/google/android/gms/reminders/model/WeeklyPattern;

    move-result-object v0

    .line 160
    if-nez v0, :cond_0

    .line 185
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/WeeklyPattern;->getWeekDay()Ljava/util/List;

    move-result-object v2

    .line 167
    new-instance v0, Lcom/google/android/calendar/task/RecurrenceConverter$1;

    invoke-direct {v0}, Lcom/google/android/calendar/task/RecurrenceConverter$1;-><init>()V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 174
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 175
    new-array v4, v3, [I

    .line 176
    new-array v5, v3, [I

    .line 178
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_1

    .line 179
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/calendar/task/RecurrenceConverter;->toEventRecurrenceWeekday(I)I

    move-result v0

    aput v0, v4, v1

    .line 180
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v5, v1

    .line 178
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 182
    :cond_1
    iput v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    .line 183
    iput-object v4, p0, Lcom/android/calendarcommon2/EventRecurrence;->byday:[I

    .line 184
    iput-object v5, p0, Lcom/android/calendarcommon2/EventRecurrence;->bydayNum:[I

    goto :goto_0
.end method

.method private static dateTimeToCalendarTime(Lcom/google/android/gms/reminders/model/DateTime;Lcom/android/calendar/time/DateTimeService;)Lcom/android/calendar/time/Time;
    .locals 4

    .prologue
    .line 446
    new-instance v0, Lcom/android/calendar/time/Time;

    .line 447
    invoke-virtual {p1}, Lcom/android/calendar/time/DateTimeService;->calendarTimeZone()Lcom/android/calendar/time/TimeZoneImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calendar/time/TimeZoneImpl;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/calendar/time/Time;-><init>(Ljava/lang/String;)V

    .line 448
    invoke-static {p0, p1}, Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;->getDueTimeMillis(Lcom/google/android/gms/reminders/model/DateTime;Lcom/android/calendar/time/DateTimeService;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/calendar/time/Time;->set(J)V

    .line 449
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/calendar/time/Time;->normalize(Z)J

    .line 450
    return-object v0
.end method

.method public static fromRfcRecurrenceString(Ljava/lang/String;Lcom/google/android/gms/reminders/model/DateTime;Lcom/android/calendar/time/DateTimeService;)Lcom/google/android/gms/reminders/model/Recurrence;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 73
    new-instance v0, Lcom/android/calendarcommon2/EventRecurrence;

    invoke-direct {v0}, Lcom/android/calendarcommon2/EventRecurrence;-><init>()V

    .line 74
    invoke-virtual {v0, p0}, Lcom/android/calendarcommon2/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 76
    new-instance v1, Lcom/google/android/gms/reminders/model/Recurrence$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/reminders/model/Recurrence$Builder;-><init>()V

    .line 78
    iget v2, v0, Lcom/android/calendarcommon2/EventRecurrence;->freq:I

    invoke-static {v2}, Lcom/google/android/calendar/task/RecurrenceConverter;->toRecurrenceFrequency(I)I

    move-result v2

    .line 79
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/reminders/model/Recurrence$Builder;->setFrequency(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/Recurrence$Builder;

    .line 81
    iget v2, v0, Lcom/android/calendarcommon2/EventRecurrence;->interval:I

    if-lez v2, :cond_0

    .line 82
    iget v2, v0, Lcom/android/calendarcommon2/EventRecurrence;->interval:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/reminders/model/Recurrence$Builder;->setEvery(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/Recurrence$Builder;

    .line 85
    :cond_0
    new-instance v2, Lcom/google/android/gms/reminders/model/RecurrenceStart$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/reminders/model/RecurrenceStart$Builder;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/android/gms/reminders/model/RecurrenceStart$Builder;->setStartDateTime(Lcom/google/android/gms/reminders/model/DateTime;)Lcom/google/android/gms/reminders/model/RecurrenceStart$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/reminders/model/RecurrenceStart$Builder;->build()Lcom/google/android/gms/reminders/model/RecurrenceStart;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/reminders/model/Recurrence$Builder;->setRecurrenceStart(Lcom/google/android/gms/reminders/model/RecurrenceStart;)Lcom/google/android/gms/reminders/model/Recurrence$Builder;

    .line 86
    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/DateTime;->getAllDay()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/google/android/calendar/task/RecurrenceConverter;->getRecurrenceEnd(Lcom/android/calendarcommon2/EventRecurrence;Z)Lcom/google/android/gms/reminders/model/RecurrenceEnd;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/reminders/model/Recurrence$Builder;->setRecurrenceEnd(Lcom/google/android/gms/reminders/model/RecurrenceEnd;)Lcom/google/android/gms/reminders/model/Recurrence$Builder;

    .line 87
    invoke-static {p1}, Lcom/google/android/calendar/task/RecurrenceConverter;->getDailyPattern(Lcom/google/android/gms/reminders/model/DateTime;)Lcom/google/android/gms/reminders/model/DailyPattern;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/reminders/model/Recurrence$Builder;->setDailyPattern(Lcom/google/android/gms/reminders/model/DailyPattern;)Lcom/google/android/gms/reminders/model/Recurrence$Builder;

    .line 89
    invoke-static {p1, p2}, Lcom/google/android/calendar/task/RecurrenceConverter;->dateTimeToCalendarTime(Lcom/google/android/gms/reminders/model/DateTime;Lcom/android/calendar/time/DateTimeService;)Lcom/android/calendar/time/Time;

    move-result-object v2

    .line 91
    iget v3, v0, Lcom/android/calendarcommon2/EventRecurrence;->freq:I

    packed-switch v3, :pswitch_data_0

    .line 117
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/reminders/model/Recurrence$Builder;->build()Lcom/google/android/gms/reminders/model/Recurrence;

    move-result-object v0

    return-object v0

    .line 93
    :pswitch_0
    invoke-static {v0}, Lcom/google/android/calendar/task/RecurrenceConverter;->getWeeklyPattern(Lcom/android/calendarcommon2/EventRecurrence;)Lcom/google/android/gms/reminders/model/WeeklyPattern$Builder;

    move-result-object v0

    .line 94
    if-nez v0, :cond_1

    .line 95
    new-instance v0, Lcom/google/android/gms/reminders/model/WeeklyPattern$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/reminders/model/WeeklyPattern$Builder;-><init>()V

    new-array v3, v6, [Ljava/lang/Integer;

    invoke-static {v2}, Lcom/google/android/calendar/task/RecurrenceConverter;->getDayOfWeek(Lcom/android/calendar/time/Time;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-virtual {v0, v3}, Lcom/google/android/gms/reminders/model/WeeklyPattern$Builder;->addWeekDay([Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/WeeklyPattern$Builder;

    move-result-object v0

    .line 97
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/reminders/model/WeeklyPattern$Builder;->build()Lcom/google/android/gms/reminders/model/WeeklyPattern;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/reminders/model/Recurrence$Builder;->setWeeklyPattern(Lcom/google/android/gms/reminders/model/WeeklyPattern;)Lcom/google/android/gms/reminders/model/Recurrence$Builder;

    goto :goto_0

    .line 100
    :pswitch_1
    invoke-static {v0}, Lcom/google/android/calendar/task/RecurrenceConverter;->getMonthlyPattern(Lcom/android/calendarcommon2/EventRecurrence;)Lcom/google/android/gms/reminders/model/MonthlyPattern$Builder;

    move-result-object v0

    .line 101
    if-nez v0, :cond_2

    .line 102
    new-instance v0, Lcom/google/android/gms/reminders/model/MonthlyPattern$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/reminders/model/MonthlyPattern$Builder;-><init>()V

    new-array v3, v6, [Ljava/lang/Integer;

    iget v2, v2, Lcom/android/calendar/time/Time;->monthDay:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-virtual {v0, v3}, Lcom/google/android/gms/reminders/model/MonthlyPattern$Builder;->addMonthDay([Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/MonthlyPattern$Builder;

    move-result-object v0

    .line 104
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/reminders/model/MonthlyPattern$Builder;->build()Lcom/google/android/gms/reminders/model/MonthlyPattern;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/reminders/model/Recurrence$Builder;->setMonthlyPattern(Lcom/google/android/gms/reminders/model/MonthlyPattern;)Lcom/google/android/gms/reminders/model/Recurrence$Builder;

    goto :goto_0

    .line 107
    :pswitch_2
    new-instance v0, Lcom/google/android/gms/reminders/model/YearlyPattern$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/reminders/model/YearlyPattern$Builder;-><init>()V

    new-array v3, v6, [Ljava/lang/Integer;

    iget v4, v2, Lcom/android/calendar/time/Time;->month:I

    add-int/lit8 v4, v4, 0x1

    .line 108
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v3}, Lcom/google/android/gms/reminders/model/YearlyPattern$Builder;->addYearMonth([Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/YearlyPattern$Builder;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/reminders/model/MonthlyPattern$Builder;

    invoke-direct {v3}, Lcom/google/android/gms/reminders/model/MonthlyPattern$Builder;-><init>()V

    new-array v4, v6, [Ljava/lang/Integer;

    iget v2, v2, Lcom/android/calendar/time/Time;->monthDay:I

    .line 109
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Lcom/google/android/gms/reminders/model/MonthlyPattern$Builder;->addMonthDay([Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/MonthlyPattern$Builder;

    move-result-object v2

    .line 110
    invoke-virtual {v2}, Lcom/google/android/gms/reminders/model/MonthlyPattern$Builder;->build()Lcom/google/android/gms/reminders/model/MonthlyPattern;

    move-result-object v2

    .line 109
    invoke-virtual {v0, v2}, Lcom/google/android/gms/reminders/model/YearlyPattern$Builder;->setMonthlyPattern(Lcom/google/android/gms/reminders/model/MonthlyPattern;)Lcom/google/android/gms/reminders/model/YearlyPattern$Builder;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lcom/google/android/gms/reminders/model/YearlyPattern$Builder;->build()Lcom/google/android/gms/reminders/model/YearlyPattern;

    move-result-object v0

    .line 107
    invoke-virtual {v1, v0}, Lcom/google/android/gms/reminders/model/Recurrence$Builder;->setYearlyPattern(Lcom/google/android/gms/reminders/model/YearlyPattern;)Lcom/google/android/gms/reminders/model/Recurrence$Builder;

    goto :goto_0

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static getDailyPattern(Lcom/google/android/gms/reminders/model/DateTime;)Lcom/google/android/gms/reminders/model/DailyPattern;
    .locals 2

    .prologue
    .line 300
    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DateTime;->getAllDay()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DateTime;->getPeriod()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DateTime;->getTime()Lcom/google/android/gms/reminders/model/Time;

    move-result-object v0

    if-nez v0, :cond_1

    .line 301
    :cond_0
    const/4 v0, 0x0

    .line 308
    :goto_0
    return-object v0

    .line 304
    :cond_1
    new-instance v0, Lcom/google/android/gms/reminders/model/DailyPattern$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/reminders/model/DailyPattern$Builder;-><init>()V

    .line 305
    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DateTime;->getPeriod()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/DailyPattern$Builder;->setDayPeriod(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/DailyPattern$Builder;

    .line 306
    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DateTime;->getAllDay()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/DailyPattern$Builder;->setAllDay(Ljava/lang/Boolean;)Lcom/google/android/gms/reminders/model/DailyPattern$Builder;

    .line 307
    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DateTime;->getTime()Lcom/google/android/gms/reminders/model/Time;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/DailyPattern$Builder;->setTimeOfDay(Lcom/google/android/gms/reminders/model/Time;)Lcom/google/android/gms/reminders/model/DailyPattern$Builder;

    .line 308
    invoke-virtual {v0}, Lcom/google/android/gms/reminders/model/DailyPattern$Builder;->build()Lcom/google/android/gms/reminders/model/DailyPattern;

    move-result-object v0

    goto :goto_0
.end method

.method private static getDayOfWeek(Lcom/android/calendar/time/Time;)I
    .locals 1

    .prologue
    .line 440
    iget v0, p0, Lcom/android/calendar/time/Time;->weekDay:I

    if-nez v0, :cond_0

    const/4 v0, 0x7

    :goto_0
    return v0

    .line 441
    :cond_0
    iget v0, p0, Lcom/android/calendar/time/Time;->weekDay:I

    goto :goto_0
.end method

.method private static getMonthlyPattern(Lcom/android/calendarcommon2/EventRecurrence;)Lcom/google/android/gms/reminders/model/MonthlyPattern$Builder;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 340
    iget v0, p0, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/android/calendarcommon2/EventRecurrence;->bymonthdayCount:I

    if-gt v0, v7, :cond_1

    .line 341
    const/4 v0, 0x0

    .line 356
    :cond_0
    :goto_0
    return-object v0

    .line 344
    :cond_1
    new-instance v0, Lcom/google/android/gms/reminders/model/MonthlyPattern$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/reminders/model/MonthlyPattern$Builder;-><init>()V

    .line 345
    iget v1, p0, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    if-lez v1, :cond_2

    .line 346
    iget-object v1, p0, Lcom/android/calendarcommon2/EventRecurrence;->byday:[I

    aget v1, v1, v2

    invoke-static {v1}, Lcom/google/android/calendar/task/RecurrenceConverter;->toRecurrenceWeekday(I)I

    move-result v1

    .line 347
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/MonthlyPattern$Builder;->setWeekDay(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/MonthlyPattern$Builder;

    .line 348
    iget-object v1, p0, Lcom/android/calendarcommon2/EventRecurrence;->bydayNum:[I

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/MonthlyPattern$Builder;->setWeekDayNumber(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/MonthlyPattern$Builder;

    goto :goto_0

    .line 350
    :cond_2
    iget v1, p0, Lcom/android/calendarcommon2/EventRecurrence;->bymonthdayCount:I

    if-lez v1, :cond_0

    .line 351
    iget-object v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->bymonthday:[I

    array-length v4, v3

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_0

    aget v5, v3, v1

    .line 352
    new-array v6, v7, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v2

    invoke-virtual {v0, v6}, Lcom/google/android/gms/reminders/model/MonthlyPattern$Builder;->addMonthDay([Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/MonthlyPattern$Builder;

    .line 351
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static getRecurrenceEnd(Lcom/android/calendarcommon2/EventRecurrence;Z)Lcom/google/android/gms/reminders/model/RecurrenceEnd;
    .locals 4

    .prologue
    .line 262
    iget v0, p0, Lcom/android/calendarcommon2/EventRecurrence;->count:I

    if-lez v0, :cond_0

    .line 263
    new-instance v0, Lcom/google/android/gms/reminders/model/RecurrenceEnd$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/reminders/model/RecurrenceEnd$Builder;-><init>()V

    iget v1, p0, Lcom/android/calendarcommon2/EventRecurrence;->count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/RecurrenceEnd$Builder;->setNumOccurrences(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/RecurrenceEnd$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/reminders/model/RecurrenceEnd$Builder;->build()Lcom/google/android/gms/reminders/model/RecurrenceEnd;

    move-result-object v0

    .line 284
    :goto_0
    return-object v0

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/android/calendarcommon2/EventRecurrence;->until:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 265
    new-instance v0, Lcom/android/calendar/time/Time;

    invoke-direct {v0}, Lcom/android/calendar/time/Time;-><init>()V

    .line 266
    iget-object v1, p0, Lcom/android/calendarcommon2/EventRecurrence;->until:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/calendar/time/Time;->parse(Ljava/lang/String;)Z

    .line 268
    new-instance v1, Lcom/google/android/gms/reminders/model/DateTime$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/reminders/model/DateTime$Builder;-><init>()V

    .line 269
    iget v2, v0, Lcom/android/calendar/time/Time;->monthDay:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/reminders/model/DateTime$Builder;->setDay(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/DateTime$Builder;

    .line 270
    iget v2, v0, Lcom/android/calendar/time/Time;->month:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/reminders/model/DateTime$Builder;->setMonth(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/DateTime$Builder;

    .line 271
    iget v2, v0, Lcom/android/calendar/time/Time;->year:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/reminders/model/DateTime$Builder;->setYear(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/DateTime$Builder;

    .line 273
    new-instance v2, Lcom/google/android/gms/reminders/model/Time$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/reminders/model/Time$Builder;-><init>()V

    .line 274
    iget v3, v0, Lcom/android/calendar/time/Time;->hour:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/reminders/model/Time$Builder;->setHour(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/Time$Builder;

    .line 275
    iget v3, v0, Lcom/android/calendar/time/Time;->minute:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/reminders/model/Time$Builder;->setMinute(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/Time$Builder;

    .line 276
    iget v0, v0, Lcom/android/calendar/time/Time;->second:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/reminders/model/Time$Builder;->setSecond(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/Time$Builder;

    .line 277
    invoke-virtual {v2}, Lcom/google/android/gms/reminders/model/Time$Builder;->build()Lcom/google/android/gms/reminders/model/Time;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/reminders/model/DateTime$Builder;->setTime(Lcom/google/android/gms/reminders/model/Time;)Lcom/google/android/gms/reminders/model/DateTime$Builder;

    .line 279
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/reminders/model/DateTime$Builder;->setAllDay(Ljava/lang/Boolean;)Lcom/google/android/gms/reminders/model/DateTime$Builder;

    .line 281
    new-instance v0, Lcom/google/android/gms/reminders/model/RecurrenceEnd$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/reminders/model/RecurrenceEnd$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/reminders/model/DateTime$Builder;->build()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/RecurrenceEnd$Builder;->setEndDateTime(Lcom/google/android/gms/reminders/model/DateTime;)Lcom/google/android/gms/reminders/model/RecurrenceEnd$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/reminders/model/RecurrenceEnd$Builder;->build()Lcom/google/android/gms/reminders/model/RecurrenceEnd;

    move-result-object v0

    goto :goto_0

    .line 284
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getWeeklyPattern(Lcom/android/calendarcommon2/EventRecurrence;)Lcom/google/android/gms/reminders/model/WeeklyPattern$Builder;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 318
    iget v0, p0, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    if-gtz v0, :cond_0

    .line 319
    const/4 v0, 0x0

    .line 327
    :goto_0
    return-object v0

    .line 322
    :cond_0
    new-instance v2, Lcom/google/android/gms/reminders/model/WeeklyPattern$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/reminders/model/WeeklyPattern$Builder;-><init>()V

    move v0, v1

    .line 323
    :goto_1
    iget v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    if-ge v0, v3, :cond_1

    .line 324
    iget-object v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->byday:[I

    aget v3, v3, v0

    invoke-static {v3}, Lcom/google/android/calendar/task/RecurrenceConverter;->toRecurrenceWeekday(I)I

    move-result v3

    .line 325
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v1

    invoke-virtual {v2, v4}, Lcom/google/android/gms/reminders/model/WeeklyPattern$Builder;->addWeekDay([Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/WeeklyPattern$Builder;

    .line 323
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 327
    goto :goto_0
.end method

.method private static maybeSetCountAndUntilOnEventRecurrence(Lcom/android/calendarcommon2/EventRecurrence;Lcom/google/android/gms/reminders/model/Recurrence;Lcom/android/calendar/time/DateTimeService;)V
    .locals 3

    .prologue
    .line 130
    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Recurrence;->getRecurrenceEnd()Lcom/google/android/gms/reminders/model/RecurrenceEnd;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/RecurrenceEnd;->getAutoRenew()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/RecurrenceEnd;->getEndDateTime()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v1

    .line 137
    if-eqz v1, :cond_2

    .line 139
    invoke-static {v1, p2}, Lcom/google/android/calendar/task/RecurrenceConverter;->dateTimeToCalendarTime(Lcom/google/android/gms/reminders/model/DateTime;Lcom/android/calendar/time/DateTimeService;)Lcom/android/calendar/time/Time;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/time/Time;->format2445()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendarcommon2/EventRecurrence;->until:Ljava/lang/String;

    goto :goto_0

    .line 144
    :cond_2
    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/RecurrenceEnd;->getNumOccurrences()Ljava/lang/Integer;

    move-result-object v1

    .line 145
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    .line 146
    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/RecurrenceEnd;->getNumOccurrences()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/calendarcommon2/EventRecurrence;->count:I

    goto :goto_0
.end method

.method private static toEventRecurrenceFrequency(I)I
    .locals 1

    .prologue
    .line 375
    packed-switch p0, :pswitch_data_0

    .line 386
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 377
    :pswitch_0
    const/4 v0, 0x4

    goto :goto_0

    .line 379
    :pswitch_1
    const/4 v0, 0x5

    goto :goto_0

    .line 381
    :pswitch_2
    const/4 v0, 0x6

    goto :goto_0

    .line 383
    :pswitch_3
    const/4 v0, 0x7

    goto :goto_0

    .line 375
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static toEventRecurrenceWeekday(I)I
    .locals 3

    .prologue
    .line 413
    packed-switch p0, :pswitch_data_0

    .line 430
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2a

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid week day in recurrence:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :pswitch_0
    const/high16 v0, 0x20000

    .line 427
    :goto_0
    return v0

    .line 417
    :pswitch_1
    const/high16 v0, 0x40000

    goto :goto_0

    .line 419
    :pswitch_2
    const/high16 v0, 0x80000

    goto :goto_0

    .line 421
    :pswitch_3
    const/high16 v0, 0x100000

    goto :goto_0

    .line 423
    :pswitch_4
    const/high16 v0, 0x200000

    goto :goto_0

    .line 425
    :pswitch_5
    const/high16 v0, 0x400000

    goto :goto_0

    .line 427
    :pswitch_6
    const/high16 v0, 0x10000

    goto :goto_0

    .line 413
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static toRecurrenceFrequency(I)I
    .locals 1

    .prologue
    .line 360
    packed-switch p0, :pswitch_data_0

    .line 371
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 362
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 364
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 366
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 368
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 360
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static toRecurrenceWeekday(I)I
    .locals 3

    .prologue
    .line 390
    sparse-switch p0, :sswitch_data_0

    .line 407
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid week day in EventRecurrence:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :sswitch_0
    const/4 v0, 0x7

    .line 404
    :goto_0
    return v0

    .line 394
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 396
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 398
    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 400
    :sswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 402
    :sswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 404
    :sswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 390
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x80000 -> :sswitch_3
        0x100000 -> :sswitch_4
        0x200000 -> :sswitch_5
        0x400000 -> :sswitch_6
    .end sparse-switch
.end method

.method public static toRfcRecurrence(Lcom/google/android/gms/reminders/model/Recurrence;Lcom/android/calendar/time/DateTimeService;)Lcom/android/calendarcommon2/EventRecurrence;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lcom/android/calendarcommon2/EventRecurrence;

    invoke-direct {v0}, Lcom/android/calendarcommon2/EventRecurrence;-><init>()V

    .line 47
    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Recurrence;->getFrequency()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 48
    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Recurrence;->getFrequency()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/calendar/task/RecurrenceConverter;->toEventRecurrenceFrequency(I)I

    move-result v1

    iput v1, v0, Lcom/android/calendarcommon2/EventRecurrence;->freq:I

    .line 51
    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Recurrence;->getEvery()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 52
    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Recurrence;->getEvery()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/android/calendarcommon2/EventRecurrence;->interval:I

    .line 55
    :cond_1
    invoke-static {v0, p0, p1}, Lcom/google/android/calendar/task/RecurrenceConverter;->maybeSetCountAndUntilOnEventRecurrence(Lcom/android/calendarcommon2/EventRecurrence;Lcom/google/android/gms/reminders/model/Recurrence;Lcom/android/calendar/time/DateTimeService;)V

    .line 56
    invoke-static {v0, p0}, Lcom/google/android/calendar/task/RecurrenceConverter;->addWeekdaysOnEventRecurrence(Lcom/android/calendarcommon2/EventRecurrence;Lcom/google/android/gms/reminders/model/Recurrence;)V

    .line 57
    invoke-static {v0, p0}, Lcom/google/android/calendar/task/RecurrenceConverter;->addMonthdaysOnEventRecurrence(Lcom/android/calendarcommon2/EventRecurrence;Lcom/google/android/gms/reminders/model/Recurrence;)V

    .line 58
    invoke-static {v0, p0}, Lcom/google/android/calendar/task/RecurrenceConverter;->addMonthsOnEventRecurrence(Lcom/android/calendarcommon2/EventRecurrence;Lcom/google/android/gms/reminders/model/Recurrence;)V

    .line 60
    return-object v0
.end method
