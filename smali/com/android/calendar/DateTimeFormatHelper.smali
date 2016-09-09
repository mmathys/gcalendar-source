.class public Lcom/android/calendar/DateTimeFormatHelper;
.super Ljava/lang/Object;
.source "DateTimeFormatHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/android/calendar/DateTimeFormatHelper;


# instance fields
.field private mCalendar:Ljava/util/Calendar;

.field private mContext:Landroid/content/Context;

.field private mFormatter:Ljava/util/Formatter;

.field private mHoursStrings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIs24HourMode:Z

.field private mSb:Ljava/lang/StringBuilder;

.field private final mWeekHeaderTemplate:Ljava/lang/String;

.field private final mWeekHeaderTemplateWeekNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/android/calendar/DateTimeFormatHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/DateTimeFormatHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/DateTimeFormatHelper;->mHoursStrings:Ljava/util/List;

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/DateTimeFormatHelper;->mSb:Ljava/lang/StringBuilder;

    .line 88
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/android/calendar/DateTimeFormatHelper;->mSb:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/calendar/DateTimeFormatHelper;->mFormatter:Ljava/util/Formatter;

    .line 89
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DateTimeFormatHelper;->mCalendar:Ljava/util/Calendar;

    .line 90
    iput-object p1, p0, Lcom/android/calendar/DateTimeFormatHelper;->mContext:Landroid/content/Context;

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 92
    sget v1, Lcom/android/calendar/R$string;->week_header_template:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/DateTimeFormatHelper;->mWeekHeaderTemplate:Ljava/lang/String;

    .line 93
    sget v1, Lcom/android/calendar/R$string;->week_header_template_week_number:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DateTimeFormatHelper;->mWeekHeaderTemplateWeekNumber:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public static getInstance()Lcom/android/calendar/DateTimeFormatHelper;
    .locals 2

    .prologue
    .line 82
    sget-object v0, Lcom/android/calendar/DateTimeFormatHelper;->mInstance:Lcom/android/calendar/DateTimeFormatHelper;

    const-string v1, "DateTimeFormatHelper#initialize(...) must be called first"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/android/calendar/DateTimeFormatHelper;->mInstance:Lcom/android/calendar/DateTimeFormatHelper;

    return-object v0
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 75
    const-class v1, Lcom/android/calendar/DateTimeFormatHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/calendar/DateTimeFormatHelper;->mInstance:Lcom/android/calendar/DateTimeFormatHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 79
    :goto_0
    monitor-exit v1

    return-void

    .line 78
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/calendar/DateTimeFormatHelper;

    invoke-direct {v0, p0}, Lcom/android/calendar/DateTimeFormatHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/calendar/DateTimeFormatHelper;->mInstance:Lcom/android/calendar/DateTimeFormatHelper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized formatEditDate(Lcom/google/calendar/v2/client/service/api/time/DateTime;Z)Ljava/lang/String;
    .locals 8

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMillis()J

    move-result-wide v2

    .line 120
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getTimeZone()Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/time/TimeZone;->getId()Ljava/lang/String;

    move-result-object v7

    .line 121
    iget-object v0, p0, Lcom/android/calendar/DateTimeFormatHelper;->mSb:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 122
    iget-object v0, p0, Lcom/android/calendar/DateTimeFormatHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/calendar/DateTimeFormatHelper;->mFormatter:Ljava/util/Formatter;

    if-eqz p2, :cond_0

    .line 123
    const v6, 0x18016

    :goto_0
    move-wide v4, v2

    .line 122
    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 122
    monitor-exit p0

    return-object v0

    .line 123
    :cond_0
    const v6, 0x10016

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAccessibilityDateRangeText(JJI)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 156
    and-int/lit8 v0, p5, 0x10

    if-nez v0, :cond_0

    .line 157
    const/16 v2, 0x8

    .line 158
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/DateTimeFormatHelper;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/calendar/DateTimeFormatHelper;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    .line 160
    invoke-static {v0, v4}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v8

    move-wide v4, p1

    move-wide v6, p3

    .line 159
    invoke-static/range {v1 .. v8}, Lcom/android/calendar/Utils;->getAccessibilityDateTimes(Landroid/content/Context;IZJJLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_1

    .line 162
    check-cast v0, Ljava/lang/String;

    .line 166
    :goto_1
    return-object v0

    :cond_0
    move v2, v3

    .line 157
    goto :goto_0

    .line 166
    :cond_1
    invoke-virtual/range {p0 .. p5}, Lcom/android/calendar/DateTimeFormatHelper;->getDateRangeText(JJI)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public declared-synchronized getDateRangeText(JJI)Ljava/lang/String;
    .locals 7

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/DateTimeFormatHelper;->mSb:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 137
    iget-object v0, p0, Lcom/android/calendar/DateTimeFormatHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/calendar/DateTimeFormatHelper;->mFormatter:Ljava/util/Formatter;

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDateRangeText([IIZI)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v6, 0x0

    .line 221
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/DateTimeFormatHelper;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 223
    iget-object v0, p0, Lcom/android/calendar/DateTimeFormatHelper;->mCalendar:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/android/calendar/DateTimeFormatHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 224
    iget-object v0, p0, Lcom/android/calendar/DateTimeFormatHelper;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x1

    aget v2, p1, v2

    const/4 v3, 0x2

    aget v3, p1, v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 225
    iget-object v0, p0, Lcom/android/calendar/DateTimeFormatHelper;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 226
    iget-object v0, p0, Lcom/android/calendar/DateTimeFormatHelper;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->add(II)V

    .line 227
    iget-object v0, p0, Lcom/android/calendar/DateTimeFormatHelper;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->add(II)V

    .line 228
    iget-object v0, p0, Lcom/android/calendar/DateTimeFormatHelper;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 229
    sget-object v0, Lcom/android/calendar/DateTimeFormatHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v7, 0x31

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "getWeekRangeText start time: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v7}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 230
    sget-object v0, Lcom/android/calendar/DateTimeFormatHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v7, 0x2f

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "getWeekRangeText end time: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v7}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 231
    iget-object v0, p0, Lcom/android/calendar/DateTimeFormatHelper;->mSb:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 232
    iget-object v0, p0, Lcom/android/calendar/DateTimeFormatHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/calendar/DateTimeFormatHelper;->mFormatter:Ljava/util/Formatter;

    if-eqz p3, :cond_1

    :goto_0
    invoke-static/range {v0 .. v6}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/lang/String;

    move-result-object v0

    .line 234
    if-eq p4, v8, :cond_2

    .line 235
    iget-object v1, p0, Lcom/android/calendar/DateTimeFormatHelper;->mWeekHeaderTemplateWeekNumber:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 242
    :cond_0
    :goto_1
    monitor-exit p0

    return-object v0

    .line 233
    :cond_1
    const/high16 v6, 0x10000

    goto :goto_0

    .line 238
    :cond_2
    if-eqz p3, :cond_0

    .line 239
    :try_start_1
    iget-object v1, p0, Lcom/android/calendar/DateTimeFormatHelper;->mWeekHeaderTemplate:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHoursStrings()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 173
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/DateTimeFormatHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    .line 174
    iget-object v0, p0, Lcom/android/calendar/DateTimeFormatHelper;->mHoursStrings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/calendar/DateTimeFormatHelper;->mIs24HourMode:Z

    if-eq v0, v2, :cond_3

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/DateTimeFormatHelper;->mHoursStrings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 177
    iget-object v0, p0, Lcom/android/calendar/DateTimeFormatHelper;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 179
    iget-object v0, p0, Lcom/android/calendar/DateTimeFormatHelper;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    move v0, v1

    .line 180
    :goto_0
    const/16 v3, 0x18

    if-gt v0, v3, :cond_2

    .line 181
    iget-object v3, p0, Lcom/android/calendar/DateTimeFormatHelper;->mCalendar:Ljava/util/Calendar;

    const/16 v4, 0xb

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 182
    if-ne v0, v1, :cond_1

    .line 183
    sget-object v3, Lcom/android/calendar/DateTimeFormatHelper;->TAG:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/calendar/DateTimeFormatHelper;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x2b

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "getHoursStrings start: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 185
    :cond_1
    iget-object v3, p0, Lcom/android/calendar/DateTimeFormatHelper;->mHoursStrings:Ljava/util/List;

    iget-object v4, p0, Lcom/android/calendar/DateTimeFormatHelper;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/calendar/DateTimeFormatHelper;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    const/16 v5, 0x4001

    invoke-static {v4, v6, v7, v5}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    :cond_2
    iput-boolean v2, p0, Lcom/android/calendar/DateTimeFormatHelper;->mIs24HourMode:Z

    .line 190
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/DateTimeFormatHelper;->mHoursStrings:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMonthText([I)Ljava/lang/String;
    .locals 7

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/DateTimeFormatHelper;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 105
    iget-object v0, p0, Lcom/android/calendar/DateTimeFormatHelper;->mCalendar:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/android/calendar/DateTimeFormatHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 106
    iget-object v0, p0, Lcom/android/calendar/DateTimeFormatHelper;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x1

    aget v2, p1, v2

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 107
    sget-object v0, Lcom/android/calendar/DateTimeFormatHelper;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/calendar/DateTimeFormatHelper;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v4, 0x27

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "getMonthText time: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 109
    iget-object v0, p0, Lcom/android/calendar/DateTimeFormatHelper;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/calendar/DateTimeFormatHelper;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const/16 v6, 0x34

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/calendar/DateTimeFormatHelper;->getDateRangeText(JJI)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTimeRangeText(JJ)Ljava/lang/String;
    .locals 7

    .prologue
    .line 253
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/DateTimeFormatHelper;->mSb:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 254
    const/16 v6, 0x4001

    .line 255
    iget-object v1, p0, Lcom/android/calendar/DateTimeFormatHelper;->mContext:Landroid/content/Context;

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v1 .. v6}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWeekRangeText([IZI)Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    monitor-enter p0

    const/4 v0, 0x7

    :try_start_0
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/calendar/DateTimeFormatHelper;->getDateRangeText([IIZI)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWidgetDayDividerText(ILcom/android/calendar/time/Time;I)Ljava/lang/String;
    .locals 7

    .prologue
    .line 263
    monitor-enter p0

    :try_start_0
    invoke-virtual {p2, p1}, Lcom/android/calendar/time/Time;->setJulianDay(I)J

    .line 264
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/calendar/time/Time;->toMillis(Z)J

    move-result-wide v0

    iget-wide v2, p2, Lcom/android/calendar/time/Time;->gmtoff:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v2, v0

    .line 265
    iget-object v1, p0, Lcom/android/calendar/DateTimeFormatHelper;->mContext:Landroid/content/Context;

    const v6, 0x82012

    move-wide v4, v2

    invoke-static/range {v1 .. v6}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    .line 268
    add-int/lit8 v1, p3, 0x1

    if-ne p1, v1, :cond_1

    .line 269
    iget-object v1, p0, Lcom/android/calendar/DateTimeFormatHelper;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/calendar/R$string;->widget_day_tomorrow:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 275
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 270
    :cond_1
    if-ne p1, p3, :cond_0

    .line 271
    :try_start_1
    iget-object v1, p0, Lcom/android/calendar/DateTimeFormatHelper;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/calendar/R$string;->widget_day_today:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWidgetItemTimeText(Lcom/android/calendar/timely/TimelineItem;I)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 283
    monitor-enter p0

    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    iget-object v2, p0, Lcom/android/calendar/DateTimeFormatHelper;->mSb:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 285
    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->isAllDay()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 287
    new-instance v0, Lcom/android/calendar/time/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v1}, Lcom/android/calendar/time/Time;-><init>(Ljava/lang/String;)V

    .line 288
    iget-object v1, p0, Lcom/android/calendar/DateTimeFormatHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 289
    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->getStartMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3, v1}, Lcom/android/calendar/Utils;->convertAlldayUtcToLocal(Lcom/android/calendar/time/Time;JLjava/lang/String;)J

    move-result-wide v2

    .line 291
    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->getStartDay()I

    move-result v4

    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->getEndDay()I

    move-result v5

    if-ne v4, v5, :cond_0

    move-wide v4, v2

    .line 294
    :goto_0
    or-int/lit8 v6, p2, 0x10

    .line 295
    iget-object v0, p0, Lcom/android/calendar/DateTimeFormatHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/calendar/DateTimeFormatHelper;->mFormatter:Ljava/util/Formatter;

    invoke-static/range {v0 .. v6}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    :goto_1
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 292
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->getEndMillis()J

    move-result-wide v4

    invoke-static {v0, v4, v5, v1}, Lcom/android/calendar/Utils;->convertAlldayUtcToLocal(Lcom/android/calendar/time/Time;JLjava/lang/String;)J

    move-result-wide v4

    goto :goto_0

    .line 297
    :cond_1
    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->getStartMillis()J

    move-result-wide v2

    .line 298
    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->getEndMillis()J

    move-result-wide v4

    .line 299
    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->showEndTime()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->getLocation()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v7, v0

    .line 300
    :goto_2
    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->getEndDay()I

    move-result v6

    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->getStartDay()I

    move-result v9

    if-le v6, v9, :cond_4

    .line 302
    :goto_3
    or-int/lit8 v6, p2, 0x1

    .line 303
    if-eqz v0, :cond_2

    .line 304
    or-int/lit8 v6, v6, 0x10

    .line 306
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/DateTimeFormatHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/calendar/DateTimeFormatHelper;->mFormatter:Ljava/util/Formatter;

    if-eqz v7, :cond_5

    :goto_4
    invoke-static/range {v0 .. v6}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move v7, v1

    .line 299
    goto :goto_2

    :cond_4
    move v0, v1

    .line 300
    goto :goto_3

    :cond_5
    move-wide v4, v2

    .line 307
    goto :goto_4
.end method
