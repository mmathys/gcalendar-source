.class public Lcom/android/recurrencepicker/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static mMonthRepeatByDayOfWeekIds:[I

.field private static mMonthRepeatByDayOfWeekStrs:[[Ljava/lang/String;


# direct methods
.method private static cacheMonthRepeatStrings(Landroid/content/res/Resources;I)V
    .locals 4

    .prologue
    const/4 v3, 0x7

    .line 264
    sget-object v0, Lcom/android/recurrencepicker/Utils;->mMonthRepeatByDayOfWeekIds:[I

    if-nez v0, :cond_0

    .line 265
    new-array v0, v3, [I

    sput-object v0, Lcom/android/recurrencepicker/Utils;->mMonthRepeatByDayOfWeekIds:[I

    .line 266
    sget-object v0, Lcom/android/recurrencepicker/Utils;->mMonthRepeatByDayOfWeekIds:[I

    const/4 v1, 0x0

    sget v2, Lcom/android/recurrencepicker/R$array;->repeat_by_nth_sun:I

    aput v2, v0, v1

    .line 267
    sget-object v0, Lcom/android/recurrencepicker/Utils;->mMonthRepeatByDayOfWeekIds:[I

    const/4 v1, 0x1

    sget v2, Lcom/android/recurrencepicker/R$array;->repeat_by_nth_mon:I

    aput v2, v0, v1

    .line 268
    sget-object v0, Lcom/android/recurrencepicker/Utils;->mMonthRepeatByDayOfWeekIds:[I

    const/4 v1, 0x2

    sget v2, Lcom/android/recurrencepicker/R$array;->repeat_by_nth_tues:I

    aput v2, v0, v1

    .line 269
    sget-object v0, Lcom/android/recurrencepicker/Utils;->mMonthRepeatByDayOfWeekIds:[I

    const/4 v1, 0x3

    sget v2, Lcom/android/recurrencepicker/R$array;->repeat_by_nth_wed:I

    aput v2, v0, v1

    .line 270
    sget-object v0, Lcom/android/recurrencepicker/Utils;->mMonthRepeatByDayOfWeekIds:[I

    const/4 v1, 0x4

    sget v2, Lcom/android/recurrencepicker/R$array;->repeat_by_nth_thurs:I

    aput v2, v0, v1

    .line 271
    sget-object v0, Lcom/android/recurrencepicker/Utils;->mMonthRepeatByDayOfWeekIds:[I

    const/4 v1, 0x5

    sget v2, Lcom/android/recurrencepicker/R$array;->repeat_by_nth_fri:I

    aput v2, v0, v1

    .line 272
    sget-object v0, Lcom/android/recurrencepicker/Utils;->mMonthRepeatByDayOfWeekIds:[I

    const/4 v1, 0x6

    sget v2, Lcom/android/recurrencepicker/R$array;->repeat_by_nth_sat:I

    aput v2, v0, v1

    .line 274
    :cond_0
    sget-object v0, Lcom/android/recurrencepicker/Utils;->mMonthRepeatByDayOfWeekStrs:[[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 275
    new-array v0, v3, [[Ljava/lang/String;

    sput-object v0, Lcom/android/recurrencepicker/Utils;->mMonthRepeatByDayOfWeekStrs:[[Ljava/lang/String;

    .line 277
    :cond_1
    sget-object v0, Lcom/android/recurrencepicker/Utils;->mMonthRepeatByDayOfWeekStrs:[[Ljava/lang/String;

    aget-object v0, v0, p1

    if-nez v0, :cond_2

    .line 278
    sget-object v0, Lcom/android/recurrencepicker/Utils;->mMonthRepeatByDayOfWeekStrs:[[Ljava/lang/String;

    sget-object v1, Lcom/android/recurrencepicker/Utils;->mMonthRepeatByDayOfWeekIds:[I

    aget v1, v1, p1

    .line 279
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    .line 281
    :cond_2
    return-void
.end method

.method public static convertDayOfWeekFromCalendarToTime(I)I
    .locals 2

    .prologue
    .line 314
    packed-switch p0, :pswitch_data_0

    .line 330
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument must be between Calendar.SUNDAY and Calendar.SATURDAY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :pswitch_0
    const/4 v0, 0x1

    .line 328
    :goto_0
    return v0

    .line 318
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 320
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 322
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 324
    :pswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 326
    :pswitch_5
    const/4 v0, 0x6

    goto :goto_0

    .line 328
    :pswitch_6
    const/4 v0, 0x0

    goto :goto_0

    .line 314
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static dayToString(II)Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    invoke-static {p0}, Lcom/android/recurrencepicker/Utils;->dayToUtilDay(I)I

    move-result v0

    invoke-static {v0, p1}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static dayToUtilDay(I)I
    .locals 3

    .prologue
    .line 298
    sparse-switch p0, :sswitch_data_0

    .line 306
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1d

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "bad day argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :sswitch_0
    const/4 v0, 0x1

    .line 305
    :goto_0
    return v0

    .line 300
    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 301
    :sswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 302
    :sswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 303
    :sswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 304
    :sswitch_5
    const/4 v0, 0x6

    goto :goto_0

    .line 305
    :sswitch_6
    const/4 v0, 0x7

    goto :goto_0

    .line 298
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

.method private static getDaysString(I[I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 162
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/16 v0, 0xa

    .line 164
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    add-int/lit8 v3, p0, -0x1

    .line 168
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    .line 169
    aget v4, p1, v1

    invoke-static {v4, v0}, Lcom/android/recurrencepicker/Utils;->dayToString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 162
    :cond_0
    const/16 v0, 0x14

    goto :goto_0

    .line 172
    :cond_1
    aget v1, p1, v3

    invoke-static {v1, v0}, Lcom/android/recurrencepicker/Utils;->dayToString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRepeatString(Landroid/content/Context;Lcom/android/calendarcommon2/EventRecurrence;ZZ)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/android/recurrencepicker/Utils;->getRepeatString(Landroid/content/res/Resources;Lcom/android/calendarcommon2/EventRecurrence;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRepeatString(Landroid/content/res/Resources;Lcom/android/calendarcommon2/EventRecurrence;ZZ)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v2, 0x1

    const/4 v8, 0x0

    .line 57
    const-string v0, ""

    .line 58
    if-eqz p2, :cond_2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    iget-object v1, p1, Lcom/android/calendarcommon2/EventRecurrence;->until:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 62
    :try_start_0
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 63
    iget-object v5, p1, Lcom/android/calendarcommon2/EventRecurrence;->until:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 65
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    const/high16 v1, 0x20000

    invoke-static {v5, v6, v7, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 67
    sget v5, Lcom/android/recurrencepicker/R$string;->endByDate:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-virtual {p0, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/util/TimeFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_0
    :goto_0
    iget v1, p1, Lcom/android/calendarcommon2/EventRecurrence;->count:I

    if-lez v1, :cond_1

    .line 73
    sget v1, Lcom/android/recurrencepicker/R$plurals;->endByCount:I

    iget v5, p1, Lcom/android/calendarcommon2/EventRecurrence;->count:I

    new-array v6, v2, [Ljava/lang/Object;

    iget v7, p1, Lcom/android/calendarcommon2/EventRecurrence;->count:I

    .line 74
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    .line 73
    invoke-virtual {p0, v1, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    :cond_2
    iget v1, p1, Lcom/android/calendarcommon2/EventRecurrence;->interval:I

    if-gt v1, v2, :cond_3

    move v1, v2

    .line 81
    :goto_1
    invoke-static {p1}, Lcom/android/recurrencepicker/Utils;->repeatsEveryDay(Lcom/android/calendarcommon2/EventRecurrence;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v4

    .line 82
    :goto_2
    packed-switch v5, :pswitch_data_0

    move-object v0, v3

    .line 153
    :goto_3
    return-object v0

    .line 80
    :cond_3
    iget v1, p1, Lcom/android/calendarcommon2/EventRecurrence;->interval:I

    goto :goto_1

    .line 81
    :cond_4
    iget v5, p1, Lcom/android/calendarcommon2/EventRecurrence;->freq:I

    goto :goto_2

    .line 84
    :pswitch_0
    if-eqz p3, :cond_5

    sget v3, Lcom/android/recurrencepicker/R$plurals;->daily:I

    .line 85
    :goto_4
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v8

    invoke-virtual {p0, v3, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 84
    :cond_5
    sget v3, Lcom/android/recurrencepicker/R$plurals;->daily_lower:I

    goto :goto_4

    .line 85
    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 87
    :pswitch_1
    if-eqz p3, :cond_7

    sget v3, Lcom/android/recurrencepicker/R$plurals;->weekly:I

    move v5, v3

    .line 88
    :goto_5
    if-eqz p3, :cond_8

    sget v3, Lcom/android/recurrencepicker/R$string;->weekly_simple:I

    move v4, v3

    .line 90
    :goto_6
    if-eqz p3, :cond_9

    sget v3, Lcom/android/recurrencepicker/R$string;->every_weekday:I

    .line 92
    :goto_7
    invoke-virtual {p1}, Lcom/android/calendarcommon2/EventRecurrence;->repeatsOnEveryWeekDay()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 93
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 87
    :cond_7
    sget v3, Lcom/android/recurrencepicker/R$plurals;->weekly_lower:I

    move v5, v3

    goto :goto_5

    .line 89
    :cond_8
    sget v3, Lcom/android/recurrencepicker/R$string;->weekly_simple_lower:I

    move v4, v3

    goto :goto_6

    .line 91
    :cond_9
    sget v3, Lcom/android/recurrencepicker/R$string;->every_weekday_lower:I

    goto :goto_7

    .line 93
    :cond_a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 96
    :cond_b
    iget v3, p1, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    if-lez v3, :cond_c

    .line 97
    iget v3, p1, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    iget-object v4, p1, Lcom/android/calendarcommon2/EventRecurrence;->byday:[I

    invoke-static {v3, v4}, Lcom/android/recurrencepicker/Utils;->getDaysString(I[I)Ljava/lang/String;

    move-result-object v3

    .line 110
    :goto_8
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v8

    aput-object v3, v4, v2

    invoke-virtual {p0, v5, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 103
    :cond_c
    iget-object v3, p1, Lcom/android/calendarcommon2/EventRecurrence;->startDate:Landroid/text/format/Time;

    if-nez v3, :cond_e

    .line 104
    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_d
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 107
    :cond_e
    iget-object v3, p1, Lcom/android/calendarcommon2/EventRecurrence;->startDate:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->weekDay:I

    invoke-static {v3}, Lcom/android/calendarcommon2/EventRecurrence;->timeDay2Day(I)I

    move-result v3

    .line 108
    const/16 v4, 0xa

    invoke-static {v3, v4}, Lcom/android/recurrencepicker/Utils;->dayToString(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    .line 110
    :cond_f
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 115
    :pswitch_2
    if-eqz p3, :cond_11

    sget v3, Lcom/android/recurrencepicker/R$plurals;->monthly_interval:I

    .line 117
    :goto_9
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v8

    invoke-virtual {p0, v3, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-static {p1}, Lcom/android/recurrencepicker/Utils;->repeatsMonthlyOnDayCountAllowNeg(Lcom/android/calendarcommon2/EventRecurrence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 119
    iget-object v1, p1, Lcom/android/calendarcommon2/EventRecurrence;->byday:[I

    aget v1, v1, v8

    invoke-static {v1}, Lcom/android/calendarcommon2/EventRecurrence;->day2TimeDay(I)I

    move-result v3

    .line 121
    invoke-static {p0, v3}, Lcom/android/recurrencepicker/Utils;->cacheMonthRepeatStrings(Landroid/content/res/Resources;I)V

    .line 122
    iget-object v1, p1, Lcom/android/calendarcommon2/EventRecurrence;->bydayNum:[I

    aget v1, v1, v8

    add-int/lit8 v1, v1, -0x1

    .line 124
    const/4 v5, -0x2

    if-ne v1, v5, :cond_10

    move v1, v4

    .line 128
    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const-string v2, " ("

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    sget-object v2, Lcom/android/recurrencepicker/Utils;->mMonthRepeatByDayOfWeekStrs:[[Ljava/lang/String;

    aget-object v2, v2, v3

    aget-object v1, v2, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const-string v1, ")"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 116
    :cond_11
    sget v3, Lcom/android/recurrencepicker/R$plurals;->monthly_interval_lower:I

    goto :goto_9

    .line 135
    :cond_12
    invoke-static {p1}, Lcom/android/recurrencepicker/Utils;->repeatsMonthlyOnLastDay(Lcom/android/calendarcommon2/EventRecurrence;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    sget v2, Lcom/android/recurrencepicker/R$string;->recurrence_month_pattern_last_day:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 144
    :cond_13
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_14
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 147
    :pswitch_3
    if-eqz p3, :cond_15

    sget v3, Lcom/android/recurrencepicker/R$plurals;->yearly_interval_plain:I

    .line 149
    :goto_a
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v8

    invoke-virtual {p0, v3, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 148
    :cond_15
    sget v3, Lcom/android/recurrencepicker/R$plurals;->yearly_interval_lower:I

    goto :goto_a

    .line 150
    :cond_16
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 68
    :catch_0
    move-exception v1

    goto/16 :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static repeatsEveryDay(Lcom/android/calendarcommon2/EventRecurrence;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 336
    iget v1, p0, Lcom/android/calendarcommon2/EventRecurrence;->freq:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/calendarcommon2/EventRecurrence;->freq:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/android/calendarcommon2/EventRecurrence;->interval:I

    if-gt v1, v0, :cond_1

    iget v1, p0, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static repeatsMonthlyOnDayCountAllowNeg(Lcom/android/calendarcommon2/EventRecurrence;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 224
    iget v2, p0, Lcom/android/calendarcommon2/EventRecurrence;->freq:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    .line 236
    :cond_0
    :goto_0
    return v0

    .line 228
    :cond_1
    iget v2, p0, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    if-ne v2, v1, :cond_0

    iget v2, p0, Lcom/android/calendarcommon2/EventRecurrence;->bymonthdayCount:I

    if-nez v2, :cond_0

    .line 232
    iget-object v2, p0, Lcom/android/calendarcommon2/EventRecurrence;->bydayNum:[I

    aget v2, v2, v0

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/android/calendarcommon2/EventRecurrence;->bydayNum:[I

    aget v2, v2, v0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    :cond_2
    move v0, v1

    .line 236
    goto :goto_0
.end method

.method public static repeatsMonthlyOnLastDay(Lcom/android/calendarcommon2/EventRecurrence;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 246
    iget v2, p0, Lcom/android/calendarcommon2/EventRecurrence;->freq:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    .line 258
    :cond_0
    :goto_0
    return v0

    .line 250
    :cond_1
    iget v2, p0, Lcom/android/calendarcommon2/EventRecurrence;->bymonthdayCount:I

    if-ne v2, v1, :cond_0

    iget v2, p0, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    if-nez v2, :cond_0

    .line 254
    iget-object v2, p0, Lcom/android/calendarcommon2/EventRecurrence;->bymonthday:[I

    aget v2, v2, v0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 258
    goto :goto_0
.end method
