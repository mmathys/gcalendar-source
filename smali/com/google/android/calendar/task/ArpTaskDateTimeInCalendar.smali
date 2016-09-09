.class public Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;
.super Ljava/lang/Object;
.source "ArpTaskDateTimeInCalendar.java"


# instance fields
.field public final mAllDay:Z

.field public final mOriginalStartMillis:Ljava/lang/Long;

.field public final mStartDay:I

.field public final mStartMillis:J

.field public final mStartMinute:I

.field public final mUnscheduled:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/reminders/model/Task;Lcom/android/calendar/time/DateTimeService;)V
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p2}, Lcom/android/calendar/time/DateTimeService;->today()Lcom/android/calendar/time/DateTimeImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/time/DateTimeImpl;->getMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;-><init>(Lcom/google/android/gms/reminders/model/Task;Lcom/android/calendar/time/DateTimeService;J)V

    .line 124
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/reminders/model/Task;Lcom/android/calendar/time/DateTimeService;J)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getArchived()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getDueDate()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v0

    if-nez v0, :cond_1

    .line 83
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;->mOriginalStartMillis:Ljava/lang/Long;

    .line 85
    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getArchived()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    iput-boolean v1, p0, Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;->mAllDay:Z

    .line 90
    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getArchivedTimeMs()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 91
    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getArchivedTimeMs()Ljava/lang/Long;

    move-result-object v0

    .line 90
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 92
    invoke-virtual {p2, v0, v1}, Lcom/android/calendar/time/DateTimeService;->convertLocalToAllDayLocal(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;->mStartMillis:J

    .line 93
    iput-boolean v2, p0, Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;->mUnscheduled:Z

    .line 110
    :goto_2
    iget-wide v0, p0, Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;->mStartMillis:J

    .line 111
    invoke-virtual {p2, v0, v1}, Lcom/android/calendar/time/DateTimeService;->getRecycleTimeForMillis(J)Lcom/android/calendar/time/Time;

    move-result-object v0

    .line 112
    iget-wide v2, p0, Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;->mStartMillis:J

    iget-wide v4, v0, Lcom/android/calendar/time/Time;->gmtoff:J

    invoke-static {v2, v3, v4, v5}, Lcom/android/calendar/time/Time;->getJulianDay(JJ)I

    move-result v1

    iput v1, p0, Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;->mStartDay:I

    .line 113
    iget v1, v0, Lcom/android/calendar/time/Time;->hour:I

    mul-int/lit8 v1, v1, 0x3c

    iget v0, v0, Lcom/android/calendar/time/Time;->minute:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;->mStartMinute:I

    .line 114
    return-void

    .line 83
    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getDueDate()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;->getDueTimeMillis(Lcom/google/android/gms/reminders/model/DateTime;Lcom/android/calendar/time/DateTimeService;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 91
    :cond_2
    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getCreatedTimeMillis()Ljava/lang/Long;

    move-result-object v0

    goto :goto_1

    .line 94
    :cond_3
    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getDueDate()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;->mOriginalStartMillis:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v4, p3

    if-ltz v0, :cond_5

    .line 98
    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getDueDate()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;->isDueAllDay(Lcom/google/android/gms/reminders/model/DateTime;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;->mAllDay:Z

    .line 99
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;->mOriginalStartMillis:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;->mStartMillis:J

    .line 100
    iget-boolean v0, p0, Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;->mAllDay:Z

    if-eqz v0, :cond_4

    iget-wide v4, p0, Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;->mStartMillis:J

    cmp-long v0, v4, p3

    if-nez v0, :cond_4

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;->mUnscheduled:Z

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    .line 105
    :cond_5
    iput-boolean v1, p0, Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;->mAllDay:Z

    .line 106
    iput-wide p3, p0, Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;->mStartMillis:J

    .line 107
    iput-boolean v1, p0, Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;->mUnscheduled:Z

    goto :goto_2
.end method

.method public static fromCalendarDateTime(Lcom/google/calendar/v2/client/service/api/time/DateTime;ZZ)Lcom/google/android/gms/reminders/model/DateTime;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 190
    if-nez p0, :cond_0

    .line 191
    const/4 v0, 0x0

    .line 217
    :goto_0
    return-object v0

    .line 194
    :cond_0
    new-instance v0, Lcom/google/android/gms/reminders/model/DateTime$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/reminders/model/DateTime$Builder;-><init>()V

    .line 195
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/DateTime$Builder;->setAllDay(Ljava/lang/Boolean;)Lcom/google/android/gms/reminders/model/DateTime$Builder;

    move-result-object v0

    .line 196
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getYear()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/DateTime$Builder;->setYear(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/DateTime$Builder;

    move-result-object v0

    .line 197
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMonthOfYear()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/DateTime$Builder;->setMonth(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/DateTime$Builder;

    move-result-object v0

    .line 198
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getDayOfMonth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/DateTime$Builder;->setDay(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/DateTime$Builder;

    move-result-object v0

    .line 199
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/DateTime$Builder;->setUnspecifiedFutureTime(Ljava/lang/Boolean;)Lcom/google/android/gms/reminders/model/DateTime$Builder;

    move-result-object v0

    .line 201
    if-eqz p1, :cond_1

    .line 203
    const/4 v1, 0x1

    .line 204
    invoke-static {v1}, Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;->getHourFromPeriod(I)I

    move-result v1

    invoke-interface {p0, v1, v4, v4}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->withTime(III)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object p0

    .line 207
    :cond_1
    if-eqz p2, :cond_2

    .line 208
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/DateTime$Builder;->setAbsoluteTimeMs(Ljava/lang/Long;)Lcom/google/android/gms/reminders/model/DateTime$Builder;

    .line 211
    :cond_2
    new-instance v1, Lcom/google/android/gms/reminders/model/Time$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/reminders/model/Time$Builder;-><init>()V

    .line 212
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getHourOfDay()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/reminders/model/Time$Builder;->setHour(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/Time$Builder;

    move-result-object v1

    .line 213
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMinuteOfHour()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/reminders/model/Time$Builder;->setMinute(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/Time$Builder;

    move-result-object v1

    .line 214
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/reminders/model/Time$Builder;->setSecond(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/Time$Builder;

    move-result-object v1

    .line 215
    invoke-virtual {v1}, Lcom/google/android/gms/reminders/model/Time$Builder;->build()Lcom/google/android/gms/reminders/model/Time;

    move-result-object v1

    .line 211
    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/DateTime$Builder;->setTime(Lcom/google/android/gms/reminders/model/Time;)Lcom/google/android/gms/reminders/model/DateTime$Builder;

    .line 217
    invoke-virtual {v0}, Lcom/google/android/gms/reminders/model/DateTime$Builder;->build()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static getDueTimeMillis(Lcom/google/android/gms/reminders/model/DateTime;Lcom/android/calendar/time/DateTimeService;)J
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 141
    invoke-static {p0}, Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;->isDueAllDay(Lcom/google/android/gms/reminders/model/DateTime;)Z

    move-result v0

    .line 143
    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DateTime;->getAbsoluteTimeMs()Ljava/lang/Long;

    move-result-object v1

    .line 144
    if-eqz v1, :cond_1

    .line 145
    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/calendar/time/DateTimeService;->convertLocalToAllDayLocal(J)J

    move-result-wide v0

    .line 161
    :goto_0
    return-wide v0

    .line 146
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    .line 151
    :cond_1
    if-nez v0, :cond_3

    .line 152
    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DateTime;->getTime()Lcom/google/android/gms/reminders/model/Time;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 153
    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DateTime;->getTime()Lcom/google/android/gms/reminders/model/Time;

    move-result-object v0

    .line 154
    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/Time;->getHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 155
    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/Time;->getMinute()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 161
    :goto_1
    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DateTime;->getYear()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DateTime;->getMonth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    .line 162
    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DateTime;->getDay()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object v0, p1

    .line 161
    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/time/DateTimeService;->getMillis(IIIII)J

    move-result-wide v0

    goto :goto_0

    .line 157
    :cond_2
    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DateTime;->getPeriod()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;->getHourFromPeriod(I)I

    move-result v4

    goto :goto_1

    :cond_3
    move v4, v5

    goto :goto_1
.end method

.method private static getHourFromPeriod(I)I
    .locals 1

    .prologue
    .line 229
    packed-switch p0, :pswitch_data_0

    .line 239
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 231
    :pswitch_0
    const/16 v0, 0x8

    goto :goto_0

    .line 233
    :pswitch_1
    const/16 v0, 0xd

    goto :goto_0

    .line 235
    :pswitch_2
    const/16 v0, 0x12

    goto :goto_0

    .line 237
    :pswitch_3
    const/16 v0, 0x14

    goto :goto_0

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static isDueAllDay(Lcom/google/android/gms/reminders/model/DateTime;)Z
    .locals 1

    .prologue
    .line 130
    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DateTime;->getAllDay()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DateTime;->getTime()Lcom/google/android/gms/reminders/model/Time;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DateTime;->getPeriod()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSometimeToday(Lcom/google/android/gms/reminders/model/DateTime;Lcom/android/calendar/time/DateTimeService;J)Z
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 170
    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DateTime;->getAbsoluteTimeMs()Ljava/lang/Long;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/calendar/time/DateTimeService;->convertLocalToAllDayLocal(J)J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-nez v0, :cond_0

    move v4, v6

    .line 175
    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DateTime;->getYear()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DateTime;->getMonth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    .line 176
    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DateTime;->getDay()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object v0, p1

    move v5, v4

    .line 175
    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/time/DateTimeService;->getMillis(IIIII)J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-nez v0, :cond_2

    :goto_1
    move v4, v6

    goto :goto_0

    :cond_2
    move v6, v4

    goto :goto_1
.end method
