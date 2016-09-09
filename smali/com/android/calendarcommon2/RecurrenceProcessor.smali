.class public Lcom/android/calendarcommon2/RecurrenceProcessor;
.super Ljava/lang/Object;
.source "RecurrenceProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendarcommon2/RecurrenceProcessor$DaySet;
    }
.end annotation


# static fields
.field private static final DAYS_IN_YEAR_PRECEDING_MONTH:[I

.field private static final DAYS_PER_MONTH:[I


# instance fields
.field private mDays:Lcom/android/calendarcommon2/RecurrenceProcessor$DaySet;

.field private mGenerated:Landroid/text/format/Time;

.field private mIterator:Landroid/text/format/Time;

.field private mStringBuilder:Ljava/lang/StringBuilder;

.field private mUntil:Landroid/text/format/Time;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xc

    .line 1235
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/calendarcommon2/RecurrenceProcessor;->DAYS_PER_MONTH:[I

    .line 1237
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/calendarcommon2/RecurrenceProcessor;->DAYS_IN_YEAR_PRECEDING_MONTH:[I

    return-void

    .line 1235
    nop

    :array_0
    .array-data 4
        0x1f
        0x1c
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
    .end array-data

    .line 1237
    :array_1
    .array-data 4
        0x0
        0x1f
        0x3b
        0x5a
        0x78
        0x97
        0xb4
        0xd4
        0xf3
        0x111
        0x130
        0x14e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/text/format/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    .line 29
    new-instance v0, Landroid/text/format/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mUntil:Landroid/text/format/Time;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 31
    new-instance v0, Landroid/text/format/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mGenerated:Landroid/text/format/Time;

    .line 32
    new-instance v0, Lcom/android/calendarcommon2/RecurrenceProcessor$DaySet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/calendarcommon2/RecurrenceProcessor$DaySet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mDays:Lcom/android/calendarcommon2/RecurrenceProcessor$DaySet;

    .line 38
    return-void
.end method

.method private static filter(Lcom/android/calendarcommon2/EventRecurrence;Landroid/text/format/Time;)I
    .locals 10

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 198
    iget v5, p0, Lcom/android/calendarcommon2/EventRecurrence;->freq:I

    .line 200
    if-lt v4, v5, :cond_0

    .line 202
    iget v6, p0, Lcom/android/calendarcommon2/EventRecurrence;->bymonthCount:I

    if-lez v6, :cond_0

    .line 203
    iget-object v6, p0, Lcom/android/calendarcommon2/EventRecurrence;->bymonth:[I

    iget v7, p0, Lcom/android/calendarcommon2/EventRecurrence;->bymonthCount:I

    iget v8, p1, Landroid/text/format/Time;->month:I

    add-int/lit8 v8, v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/calendarcommon2/RecurrenceProcessor;->listContains([III)Z

    move-result v6

    .line 205
    if-nez v6, :cond_0

    .line 310
    :goto_0
    return v0

    .line 210
    :cond_0
    const/4 v6, 0x5

    if-lt v6, v5, :cond_1

    .line 213
    iget v6, p0, Lcom/android/calendarcommon2/EventRecurrence;->byweeknoCount:I

    if-lez v6, :cond_1

    .line 214
    iget-object v6, p0, Lcom/android/calendarcommon2/EventRecurrence;->byweekno:[I

    iget v7, p0, Lcom/android/calendarcommon2/EventRecurrence;->byweeknoCount:I

    .line 215
    invoke-virtual {p1}, Landroid/text/format/Time;->getWeekNumber()I

    move-result v8

    const/16 v9, 0x9

    .line 216
    invoke-virtual {p1, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    .line 214
    invoke-static {v6, v7, v8, v9}, Lcom/android/calendarcommon2/RecurrenceProcessor;->listContains([IIII)Z

    move-result v6

    .line 217
    if-nez v6, :cond_1

    move v0, v1

    .line 218
    goto :goto_0

    .line 222
    :cond_1
    if-lt v3, v5, :cond_4

    .line 224
    iget v6, p0, Lcom/android/calendarcommon2/EventRecurrence;->byyeardayCount:I

    if-lez v6, :cond_2

    .line 225
    iget-object v6, p0, Lcom/android/calendarcommon2/EventRecurrence;->byyearday:[I

    iget v7, p0, Lcom/android/calendarcommon2/EventRecurrence;->byyeardayCount:I

    iget v8, p1, Landroid/text/format/Time;->yearDay:I

    const/16 v9, 0x8

    .line 226
    invoke-virtual {p1, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    .line 225
    invoke-static {v6, v7, v8, v9}, Lcom/android/calendarcommon2/RecurrenceProcessor;->listContains([IIII)Z

    move-result v6

    .line 227
    if-nez v6, :cond_2

    move v0, v2

    .line 228
    goto :goto_0

    .line 232
    :cond_2
    iget v6, p0, Lcom/android/calendarcommon2/EventRecurrence;->bymonthdayCount:I

    if-lez v6, :cond_3

    .line 233
    iget-object v6, p0, Lcom/android/calendarcommon2/EventRecurrence;->bymonthday:[I

    iget v7, p0, Lcom/android/calendarcommon2/EventRecurrence;->bymonthdayCount:I

    iget v8, p1, Landroid/text/format/Time;->monthDay:I

    .line 235
    invoke-virtual {p1, v3}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    .line 233
    invoke-static {v6, v7, v8, v9}, Lcom/android/calendarcommon2/RecurrenceProcessor;->listContains([IIII)Z

    move-result v6

    .line 236
    if-nez v6, :cond_3

    move v0, v3

    .line 237
    goto :goto_0

    .line 243
    :cond_3
    iget v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    if-lez v3, :cond_4

    .line 244
    iget-object v6, p0, Lcom/android/calendarcommon2/EventRecurrence;->byday:[I

    .line 245
    iget v7, p0, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    .line 246
    iget v3, p1, Landroid/text/format/Time;->weekDay:I

    invoke-static {v3}, Lcom/android/calendarcommon2/EventRecurrence;->timeDay2Day(I)I

    move-result v8

    .line 247
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v7, :cond_6

    .line 248
    aget v9, v6, v3

    if-ne v9, v8, :cond_5

    .line 255
    :cond_4
    if-lt v2, v5, :cond_7

    .line 257
    iget-object v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->byhour:[I

    iget v6, p0, Lcom/android/calendarcommon2/EventRecurrence;->byhourCount:I

    iget v7, p1, Landroid/text/format/Time;->hour:I

    .line 259
    invoke-virtual {p1, v2}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v2

    .line 257
    invoke-static {v3, v6, v7, v2}, Lcom/android/calendarcommon2/RecurrenceProcessor;->listContains([IIII)Z

    move-result v2

    .line 260
    if-nez v2, :cond_7

    move v0, v4

    .line 261
    goto :goto_0

    .line 247
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 252
    :cond_6
    const/4 v0, 0x5

    goto :goto_0

    .line 264
    :cond_7
    if-lt v1, v5, :cond_8

    .line 266
    iget-object v2, p0, Lcom/android/calendarcommon2/EventRecurrence;->byminute:[I

    iget v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->byminuteCount:I

    iget v6, p1, Landroid/text/format/Time;->minute:I

    .line 268
    invoke-virtual {p1, v1}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v7

    .line 266
    invoke-static {v2, v3, v6, v7}, Lcom/android/calendarcommon2/RecurrenceProcessor;->listContains([IIII)Z

    move-result v2

    .line 269
    if-nez v2, :cond_8

    .line 270
    const/4 v0, 0x7

    goto/16 :goto_0

    .line 273
    :cond_8
    if-lt v0, v5, :cond_9

    .line 275
    iget-object v2, p0, Lcom/android/calendarcommon2/EventRecurrence;->bysecond:[I

    iget v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->bysecondCount:I

    iget v6, p1, Landroid/text/format/Time;->second:I

    .line 277
    invoke-virtual {p1, v0}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v0

    .line 275
    invoke-static {v2, v3, v6, v0}, Lcom/android/calendarcommon2/RecurrenceProcessor;->listContains([IIII)Z

    move-result v0

    .line 278
    if-nez v0, :cond_9

    .line 279
    const/16 v0, 0x8

    goto/16 :goto_0

    .line 283
    :cond_9
    iget v0, p0, Lcom/android/calendarcommon2/EventRecurrence;->bysetposCount:I

    if-lez v0, :cond_a

    .line 286
    if-ne v5, v4, :cond_d

    iget v0, p0, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    if-lez v0, :cond_d

    .line 288
    iget v0, p0, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_c

    .line 289
    iget-object v2, p0, Lcom/android/calendarcommon2/EventRecurrence;->bydayNum:[I

    aget v2, v2, v0

    if-eqz v2, :cond_b

    .line 290
    const-string v0, "RecurrenceProcessor"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 291
    const-string v0, "RecurrenceProcessor"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x29

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "BYSETPOS not supported with these rules: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_a
    :goto_3
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 288
    :cond_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 296
    :cond_c
    invoke-static {p0, p1}, Lcom/android/calendarcommon2/RecurrenceProcessor;->filterMonthlySetPos(Lcom/android/calendarcommon2/EventRecurrence;Landroid/text/format/Time;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 298
    const/16 v0, 0x9

    goto/16 :goto_0

    .line 301
    :cond_d
    const-string v0, "RecurrenceProcessor"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 302
    const-string v0, "RecurrenceProcessor"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x29

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "BYSETPOS not supported with these rules: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private static filterMonthlySetPos(Lcom/android/calendarcommon2/EventRecurrence;Landroid/text/format/Time;)Z
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 329
    iget v0, p1, Landroid/text/format/Time;->weekDay:I

    iget v2, p1, Landroid/text/format/Time;->monthDay:I

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x24

    rem-int/lit8 v4, v0, 0x7

    move v0, v1

    move v2, v1

    .line 336
    :goto_0
    iget v5, p0, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    if-ge v0, v5, :cond_0

    .line 337
    iget-object v5, p0, Lcom/android/calendarcommon2/EventRecurrence;->byday:[I

    aget v5, v5, v0

    or-int/2addr v2, v5

    .line 336
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 344
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v7

    .line 345
    new-array v8, v7, [I

    move v5, v3

    move v6, v4

    move v4, v1

    .line 348
    :goto_1
    if-gt v5, v7, :cond_3

    .line 351
    const/high16 v0, 0x10000

    shl-int/2addr v0, v6

    .line 352
    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    .line 353
    add-int/lit8 v0, v4, 0x1

    aput v5, v8, v4

    move v4, v0

    .line 356
    :cond_1
    add-int/lit8 v0, v6, 0x1

    .line 357
    const/4 v6, 0x7

    if-ne v0, v6, :cond_2

    move v0, v1

    .line 348
    :cond_2
    add-int/lit8 v5, v5, 0x1

    move v6, v0

    goto :goto_1

    .line 365
    :cond_3
    iget v0, p0, Lcom/android/calendarcommon2/EventRecurrence;->bysetposCount:I

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_6

    .line 366
    iget-object v2, p0, Lcom/android/calendarcommon2/EventRecurrence;->bysetpos:[I

    aget v2, v2, v0

    .line 367
    if-lez v2, :cond_7

    .line 368
    if-le v2, v4, :cond_5

    .line 365
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 371
    :cond_5
    add-int/lit8 v2, v2, -0x1

    aget v2, v8, v2

    iget v5, p1, Landroid/text/format/Time;->monthDay:I

    if-ne v2, v5, :cond_4

    move v1, v3

    .line 387
    :cond_6
    :goto_3
    return v1

    .line 374
    :cond_7
    if-gez v2, :cond_8

    .line 375
    add-int v5, v4, v2

    if-ltz v5, :cond_4

    .line 378
    add-int/2addr v2, v4

    aget v2, v8, v2

    iget v5, p1, Landroid/text/format/Time;->monthDay:I

    if-ne v2, v5, :cond_4

    move v1, v3

    .line 379
    goto :goto_3

    .line 383
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid bysetpos value"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static isLeapYear(I)Z
    .locals 1

    .prologue
    .line 1222
    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_1

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_0

    rem-int/lit16 v0, p0, 0x190

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static listContains([III)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 153
    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 154
    aget v2, p0, v1

    if-ne v2, p2, :cond_1

    .line 155
    const/4 v0, 0x1

    .line 158
    :cond_0
    return v0

    .line 153
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static listContains([IIII)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 171
    move v3, v2

    move v0, p3

    :goto_0
    if-ge v3, p1, :cond_2

    .line 172
    aget v4, p0, v3

    .line 173
    if-lez v4, :cond_0

    .line 174
    if-ne v4, p2, :cond_1

    move v0, v1

    .line 184
    :goto_1
    return v0

    .line 178
    :cond_0
    add-int/2addr v0, v4

    .line 179
    if-ne v0, p2, :cond_1

    move v0, v1

    .line 180
    goto :goto_1

    .line 171
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 184
    goto :goto_1
.end method

.method static monthLength(II)I
    .locals 2

    .prologue
    const/16 v0, 0x1c

    .line 1248
    sget-object v1, Lcom/android/calendarcommon2/RecurrenceProcessor;->DAYS_PER_MONTH:[I

    aget v1, v1, p1

    .line 1249
    if-eq v1, v0, :cond_1

    move v0, v1

    .line 1252
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/android/calendarcommon2/RecurrenceProcessor;->isLeapYear(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x1d

    goto :goto_0
.end method

.method private static final normDateTimeComparisonValue(Landroid/text/format/Time;)J
    .locals 4

    .prologue
    .line 1303
    iget v0, p0, Landroid/text/format/Time;->year:I

    int-to-long v0, v0

    const/16 v2, 0x1a

    shl-long/2addr v0, v2

    iget v2, p0, Landroid/text/format/Time;->month:I

    shl-int/lit8 v2, v2, 0x16

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Landroid/text/format/Time;->monthDay:I

    shl-int/lit8 v2, v2, 0x11

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Landroid/text/format/Time;->hour:I

    shl-int/lit8 v2, v2, 0xc

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Landroid/text/format/Time;->minute:I

    shl-int/lit8 v2, v2, 0x6

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Landroid/text/format/Time;->second:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private static final setTimeFromLongValue(Landroid/text/format/Time;J)V
    .locals 3

    .prologue
    .line 1309
    const/16 v0, 0x1a

    shr-long v0, p1, v0

    long-to-int v0, v0

    iput v0, p0, Landroid/text/format/Time;->year:I

    .line 1310
    const/16 v0, 0x16

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0xf

    iput v0, p0, Landroid/text/format/Time;->month:I

    .line 1311
    const/16 v0, 0x11

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0x1f

    iput v0, p0, Landroid/text/format/Time;->monthDay:I

    .line 1312
    const/16 v0, 0xc

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0x1f

    iput v0, p0, Landroid/text/format/Time;->hour:I

    .line 1313
    const/4 v0, 0x6

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0x3f

    iput v0, p0, Landroid/text/format/Time;->minute:I

    .line 1314
    const-wide/16 v0, 0x3f

    and-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Landroid/text/format/Time;->second:I

    .line 1315
    return-void
.end method

.method static unsafeNormalize(Landroid/text/format/Time;)V
    .locals 9

    .prologue
    const/16 v8, 0xc

    .line 1139
    iget v1, p0, Landroid/text/format/Time;->second:I

    .line 1140
    iget v4, p0, Landroid/text/format/Time;->minute:I

    .line 1141
    iget v5, p0, Landroid/text/format/Time;->hour:I

    .line 1142
    iget v6, p0, Landroid/text/format/Time;->monthDay:I

    .line 1143
    iget v2, p0, Landroid/text/format/Time;->month:I

    .line 1144
    iget v3, p0, Landroid/text/format/Time;->year:I

    .line 1146
    if-gez v1, :cond_0

    add-int/lit8 v0, v1, -0x3b

    :goto_0
    div-int/lit8 v0, v0, 0x3c

    .line 1147
    mul-int/lit8 v7, v0, 0x3c

    sub-int v7, v1, v7

    .line 1148
    add-int v1, v4, v0

    .line 1149
    if-gez v1, :cond_1

    add-int/lit8 v0, v1, -0x3b

    :goto_1
    div-int/lit8 v0, v0, 0x3c

    .line 1150
    mul-int/lit8 v4, v0, 0x3c

    sub-int v4, v1, v4

    .line 1151
    add-int v1, v5, v0

    .line 1152
    if-gez v1, :cond_2

    add-int/lit8 v0, v1, -0x17

    :goto_2
    div-int/lit8 v0, v0, 0x18

    .line 1153
    mul-int/lit8 v5, v0, 0x18

    sub-int v5, v1, v5

    .line 1154
    add-int/2addr v0, v6

    move v1, v3

    move v3, v0

    .line 1159
    :goto_3
    if-gtz v3, :cond_4

    .line 1167
    const/4 v0, 0x1

    if-le v2, v0, :cond_3

    invoke-static {v1}, Lcom/android/calendarcommon2/RecurrenceProcessor;->yearLength(I)I

    move-result v0

    .line 1168
    :goto_4
    add-int/2addr v3, v0

    .line 1169
    add-int/lit8 v1, v1, -0x1

    .line 1170
    goto :goto_3

    :cond_0
    move v0, v1

    .line 1146
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1149
    goto :goto_1

    :cond_2
    move v0, v1

    .line 1152
    goto :goto_2

    .line 1167
    :cond_3
    add-int/lit8 v0, v1, -0x1

    invoke-static {v0}, Lcom/android/calendarcommon2/RecurrenceProcessor;->yearLength(I)I

    move-result v0

    goto :goto_4

    .line 1172
    :cond_4
    if-gez v2, :cond_7

    .line 1173
    add-int/lit8 v0, v2, 0x1

    div-int/lit8 v0, v0, 0xc

    add-int/lit8 v6, v0, -0x1

    .line 1174
    add-int v0, v1, v6

    .line 1175
    mul-int/lit8 v1, v6, 0xc

    sub-int v1, v2, v1

    move v2, v1

    move v1, v3

    .line 1185
    :goto_5
    if-nez v2, :cond_5

    .line 1186
    invoke-static {v0}, Lcom/android/calendarcommon2/RecurrenceProcessor;->yearLength(I)I

    move-result v3

    .line 1187
    if-le v1, v3, :cond_5

    .line 1188
    add-int/lit8 v0, v0, 0x1

    .line 1189
    sub-int/2addr v1, v3

    .line 1192
    :cond_5
    invoke-static {v0, v2}, Lcom/android/calendarcommon2/RecurrenceProcessor;->monthLength(II)I

    move-result v3

    .line 1193
    if-le v1, v3, :cond_8

    .line 1194
    sub-int v3, v1, v3

    .line 1195
    add-int/lit8 v1, v2, 0x1

    .line 1196
    if-lt v1, v8, :cond_6

    .line 1197
    add-int/lit8 v1, v1, -0xc

    .line 1198
    add-int/lit8 v0, v0, 0x1

    :cond_6
    move v2, v1

    move v1, v3

    .line 1201
    goto :goto_5

    .line 1176
    :cond_7
    if-lt v2, v8, :cond_9

    .line 1177
    div-int/lit8 v6, v2, 0xc

    .line 1178
    add-int v0, v1, v6

    .line 1179
    mul-int/lit8 v1, v6, 0xc

    sub-int v1, v2, v1

    move v2, v1

    move v1, v3

    goto :goto_5

    .line 1205
    :cond_8
    iput v7, p0, Landroid/text/format/Time;->second:I

    .line 1206
    iput v4, p0, Landroid/text/format/Time;->minute:I

    .line 1207
    iput v5, p0, Landroid/text/format/Time;->hour:I

    .line 1208
    iput v1, p0, Landroid/text/format/Time;->monthDay:I

    .line 1209
    iput v2, p0, Landroid/text/format/Time;->month:I

    .line 1210
    iput v0, p0, Landroid/text/format/Time;->year:I

    .line 1211
    invoke-static {v0, v2, v1}, Lcom/android/calendarcommon2/RecurrenceProcessor;->weekDay(III)I

    move-result v3

    iput v3, p0, Landroid/text/format/Time;->weekDay:I

    .line 1212
    invoke-static {v0, v2, v1}, Lcom/android/calendarcommon2/RecurrenceProcessor;->yearDay(III)I

    move-result v0

    iput v0, p0, Landroid/text/format/Time;->yearDay:I

    .line 1213
    return-void

    :cond_9
    move v0, v1

    move v1, v3

    goto :goto_5
.end method

.method private static useBYX(III)Z
    .locals 1

    .prologue
    .line 413
    if-le p0, p1, :cond_0

    if-lez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static weekDay(III)I
    .locals 2

    .prologue
    .line 1265
    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 1266
    add-int/lit8 p1, p1, 0xc

    .line 1267
    add-int/lit8 p0, p0, -0x1

    .line 1269
    :cond_0
    mul-int/lit8 v0, p1, 0xd

    add-int/lit8 v0, v0, -0xe

    div-int/lit8 v0, v0, 0x5

    add-int/2addr v0, p2

    add-int/2addr v0, p0

    div-int/lit8 v1, p0, 0x4

    add-int/2addr v0, v1

    div-int/lit8 v1, p0, 0x64

    sub-int/2addr v0, v1

    div-int/lit16 v1, p0, 0x190

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x7

    return v0
.end method

.method static yearDay(III)I
    .locals 2

    .prologue
    .line 1281
    sget-object v0, Lcom/android/calendarcommon2/RecurrenceProcessor;->DAYS_IN_YEAR_PRECEDING_MONTH:[I

    aget v0, v0, p1

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    .line 1282
    const/4 v1, 0x2

    if-lt p1, v1, :cond_0

    invoke-static {p0}, Lcom/android/calendarcommon2/RecurrenceProcessor;->isLeapYear(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1283
    add-int/lit8 v0, v0, 0x1

    .line 1285
    :cond_0
    return v0
.end method

.method static yearLength(I)I
    .locals 1

    .prologue
    .line 1232
    invoke-static {p0}, Lcom/android/calendarcommon2/RecurrenceProcessor;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16e

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x16d

    goto :goto_0
.end method


# virtual methods
.method public expand(Landroid/text/format/Time;Lcom/android/calendarcommon2/EventRecurrence;JJZLjava/util/TreeSet;)V
    .locals 43
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/format/Time;",
            "Lcom/android/calendarcommon2/EventRecurrence;",
            "JJZ",
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon2/DateException;
        }
    .end annotation

    .prologue
    .line 739
    invoke-static/range {p1 .. p1}, Lcom/android/calendarcommon2/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 740
    invoke-static/range {p1 .. p1}, Lcom/android/calendarcommon2/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v28

    .line 741
    const/4 v2, 0x0

    .line 752
    if-eqz p7, :cond_23

    cmp-long v3, v28, p3

    if-ltz v3, :cond_23

    cmp-long v3, v28, p5

    if-gez v3, :cond_23

    .line 754
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 755
    const/4 v2, 0x1

    move v3, v2

    .line 758
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object/from16 v27, v0

    .line 759
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mUntil:Landroid/text/format/Time;

    .line 760
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 761
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mGenerated:Landroid/text/format/Time;

    .line 762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mDays:Lcom/android/calendarcommon2/RecurrenceProcessor$DaySet;

    move-object/from16 v30, v0

    .line 766
    :try_start_0
    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/calendarcommon2/RecurrenceProcessor$DaySet;->setRecurrence(Lcom/android/calendarcommon2/EventRecurrence;)V

    .line 767
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, p5, v4

    if-nez v4, :cond_0

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/calendarcommon2/EventRecurrence;->until:Ljava/lang/String;

    if-nez v4, :cond_0

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/calendarcommon2/EventRecurrence;->count:I

    if-nez v4, :cond_0

    .line 768
    new-instance v2, Lcom/android/calendarcommon2/DateException;

    const-string v3, "No range end provided for a recurrence that has no UNTIL or COUNT."

    invoke-direct {v2, v3}, Lcom/android/calendarcommon2/DateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lcom/android/calendarcommon2/DateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1115
    :catch_0
    move-exception v2

    .line 1116
    const-string v3, "RecurrenceProcessor"

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x53

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "DateException with r="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rangeStart="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rangeEnd="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    throw v2

    .line 774
    :cond_0
    :try_start_1
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/calendarcommon2/EventRecurrence;->interval:I

    .line 775
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon2/EventRecurrence;->freq:I

    move/from16 v31, v0

    .line 776
    packed-switch v31, :pswitch_data_0

    .line 804
    new-instance v2, Lcom/android/calendarcommon2/DateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "bad freq="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/calendarcommon2/DateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Lcom/android/calendarcommon2/DateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1120
    :catch_1
    move-exception v2

    .line 1121
    const-string v3, "RecurrenceProcessor"

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x56

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "RuntimeException with r="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rangeStart="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rangeEnd="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    throw v2

    .line 779
    :pswitch_0
    const/4 v5, 0x1

    move/from16 v26, v5

    .line 806
    :goto_1
    if-gtz v4, :cond_21

    .line 807
    const/4 v4, 0x1

    move/from16 v25, v4

    .line 810
    :goto_2
    :try_start_2
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon2/EventRecurrence;->bymonthCount:I

    move/from16 v32, v0

    .line 811
    const/4 v4, 0x6

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-static {v0, v4, v1}, Lcom/android/calendarcommon2/RecurrenceProcessor;->useBYX(III)Z

    move-result v33

    .line 812
    const/4 v4, 0x5

    move/from16 v0, v31

    if-lt v0, v4, :cond_5

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    if-gtz v4, :cond_1

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/calendarcommon2/EventRecurrence;->bymonthdayCount:I

    if-lez v4, :cond_5

    :cond_1
    const/4 v4, 0x1

    move/from16 v24, v4

    .line 814
    :goto_3
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon2/EventRecurrence;->byhourCount:I

    move/from16 v34, v0

    .line 815
    const/4 v4, 0x3

    move/from16 v0, v31

    move/from16 v1, v34

    invoke-static {v0, v4, v1}, Lcom/android/calendarcommon2/RecurrenceProcessor;->useBYX(III)Z

    move-result v35

    .line 816
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon2/EventRecurrence;->byminuteCount:I

    move/from16 v36, v0

    .line 817
    const/4 v4, 0x2

    move/from16 v0, v31

    move/from16 v1, v36

    invoke-static {v0, v4, v1}, Lcom/android/calendarcommon2/RecurrenceProcessor;->useBYX(III)Z

    move-result v37

    .line 818
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon2/EventRecurrence;->bysecondCount:I

    move/from16 v38, v0

    .line 819
    const/4 v4, 0x1

    move/from16 v0, v31

    move/from16 v1, v38

    invoke-static {v0, v4, v1}, Lcom/android/calendarcommon2/RecurrenceProcessor;->useBYX(III)Z

    move-result v39

    .line 822
    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 823
    const/4 v4, 0x5

    move/from16 v0, v26

    if-ne v0, v4, :cond_2

    .line 824
    if-eqz v24, :cond_2

    .line 830
    const/4 v4, 0x1

    move-object/from16 v0, v27

    iput v4, v0, Landroid/text/format/Time;->monthDay:I

    .line 835
    :cond_2
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/calendarcommon2/EventRecurrence;->until:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 837
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/calendarcommon2/EventRecurrence;->until:Ljava/lang/String;

    .line 841
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v8, 0xf

    if-ne v5, v8, :cond_3

    .line 842
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Z"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 845
    :cond_3
    invoke-virtual {v6, v4}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 850
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-virtual {v6, v4}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 851
    invoke-static {v6}, Lcom/android/calendarcommon2/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v4

    move-wide/from16 v22, v4

    .line 856
    :goto_4
    const/16 v4, 0xf

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 857
    const/16 v4, 0xf

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 867
    const/4 v4, 0x0

    move v5, v4

    move v4, v3

    .line 870
    :goto_5
    const/4 v3, 0x0

    .line 871
    add-int/lit8 v21, v5, 0x1

    const/16 v6, 0x7d0

    if-le v5, v6, :cond_7

    .line 872
    const-string v2, "RecurrenceProcessor"

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x61

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Recurrence processing stuck with r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " rangeStart="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " rangeEnd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p5

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    :cond_4
    return-void

    .line 782
    :pswitch_1
    const/4 v5, 0x2

    move/from16 v26, v5

    .line 783
    goto/16 :goto_1

    .line 785
    :pswitch_2
    const/4 v5, 0x3

    move/from16 v26, v5

    .line 786
    goto/16 :goto_1

    .line 788
    :pswitch_3
    const/4 v5, 0x4

    move/from16 v26, v5

    .line 789
    goto/16 :goto_1

    .line 791
    :pswitch_4
    const/4 v5, 0x4

    .line 792
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/calendarcommon2/EventRecurrence;->interval:I

    mul-int/lit8 v4, v4, 0x7

    .line 793
    if-gtz v4, :cond_22

    .line 794
    const/4 v4, 0x7

    move/from16 v26, v5

    goto/16 :goto_1

    .line 798
    :pswitch_5
    const/4 v5, 0x5

    move/from16 v26, v5

    .line 799
    goto/16 :goto_1

    .line 801
    :pswitch_6
    const/4 v5, 0x6

    move/from16 v26, v5

    .line 802
    goto/16 :goto_1

    .line 812
    :cond_5
    const/4 v4, 0x0

    move/from16 v24, v4

    goto/16 :goto_3

    .line 853
    :cond_6
    const-wide v4, 0x7fffffffffffffffL

    move-wide/from16 v22, v4

    goto/16 :goto_4

    .line 877
    :cond_7
    invoke-static/range {v27 .. v27}, Lcom/android/calendarcommon2/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 879
    move-object/from16 v0, v27

    iget v8, v0, Landroid/text/format/Time;->year:I

    .line 880
    move-object/from16 v0, v27

    iget v5, v0, Landroid/text/format/Time;->month:I

    add-int/lit8 v19, v5, 0x1

    .line 881
    move-object/from16 v0, v27

    iget v10, v0, Landroid/text/format/Time;->monthDay:I

    .line 882
    move-object/from16 v0, v27

    iget v11, v0, Landroid/text/format/Time;->hour:I

    .line 883
    move-object/from16 v0, v27

    iget v12, v0, Landroid/text/format/Time;->minute:I

    .line 884
    move-object/from16 v0, v27

    iget v14, v0, Landroid/text/format/Time;->second:I

    .line 887
    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    :cond_8
    move/from16 v20, v3

    .line 892
    if-eqz v33, :cond_b

    .line 893
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/calendarcommon2/EventRecurrence;->bymonth:[I

    aget v3, v3, v20

    .line 895
    :goto_6
    add-int/lit8 v7, v3, -0x1

    .line 898
    const/4 v9, 0x1

    .line 899
    const/4 v3, 0x0

    .line 904
    if-eqz v24, :cond_20

    .line 908
    const/4 v3, 0x5

    move/from16 v0, v31

    if-ne v0, v3, :cond_c

    .line 926
    move-object/from16 v0, v27

    iget v3, v0, Landroid/text/format/Time;->weekDay:I

    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/calendarcommon2/EventRecurrence;->wkst:I

    .line 927
    invoke-static {v5}, Lcom/android/calendarcommon2/EventRecurrence;->day2TimeDay(I)I

    move-result v5

    sub-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x7

    rem-int/lit8 v3, v3, 0x7

    .line 928
    move-object/from16 v0, v27

    iget v5, v0, Landroid/text/format/Time;->monthDay:I

    sub-int v9, v5, v3

    .line 929
    add-int/lit8 v3, v9, 0x6

    move/from16 v18, v3

    .line 941
    :goto_7
    if-eqz v24, :cond_15

    .line 942
    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v9}, Lcom/android/calendarcommon2/RecurrenceProcessor$DaySet;->get(Landroid/text/format/Time;I)Z

    move-result v3

    if-nez v3, :cond_d

    .line 943
    add-int/lit8 v3, v9, 0x1

    .line 1060
    :goto_8
    if-eqz v24, :cond_9

    move/from16 v0, v18

    if-le v3, v0, :cond_1c

    .line 1061
    :cond_9
    add-int/lit8 v3, v20, 0x1

    .line 1062
    if-eqz v33, :cond_a

    move/from16 v0, v32

    if-lt v3, v0, :cond_8

    .line 1068
    :cond_a
    move-object/from16 v0, v27

    iget v5, v0, Landroid/text/format/Time;->monthDay:I

    .line 1069
    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1070
    const/4 v3, 0x1

    .line 1072
    :goto_9
    mul-int v6, v25, v3

    .line 1073
    packed-switch v26, :pswitch_data_1

    .line 1099
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x15

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "bad field="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    move/from16 v3, v19

    .line 894
    goto :goto_6

    .line 931
    :cond_c
    const/4 v3, 0x4

    .line 932
    invoke-virtual {v2, v3}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v3

    move/from16 v18, v3

    goto :goto_7

    :cond_d
    move v6, v9

    .line 954
    :goto_a
    const/4 v3, 0x0

    move/from16 v17, v3

    move v13, v4

    .line 956
    :goto_b
    if-eqz v35, :cond_16

    .line 957
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/calendarcommon2/EventRecurrence;->byhour:[I

    aget v5, v3, v17

    .line 962
    :goto_c
    const/4 v3, 0x0

    move/from16 v16, v3

    .line 964
    :goto_d
    if-eqz v37, :cond_17

    .line 965
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/calendarcommon2/EventRecurrence;->byminute:[I

    aget v4, v3, v16

    .line 970
    :goto_e
    const/4 v3, 0x0

    move v15, v3

    .line 972
    :goto_f
    if-eqz v39, :cond_18

    .line 973
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/calendarcommon2/EventRecurrence;->bysecond:[I

    aget v3, v3, v15

    .line 980
    :goto_10
    invoke-virtual/range {v2 .. v8}, Landroid/text/format/Time;->set(IIIIII)V

    .line 981
    invoke-static {v2}, Lcom/android/calendarcommon2/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 983
    invoke-static {v2}, Lcom/android/calendarcommon2/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v40

    .line 987
    cmp-long v3, v40, v28

    if-ltz v3, :cond_11

    .line 992
    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/android/calendarcommon2/RecurrenceProcessor;->filter(Lcom/android/calendarcommon2/EventRecurrence;Landroid/text/format/Time;)I

    move-result v3

    .line 993
    if-nez v3, :cond_11

    .line 1009
    cmp-long v3, v28, v40

    if-nez v3, :cond_e

    if-eqz p7, :cond_e

    cmp-long v3, v28, p3

    if-ltz v3, :cond_e

    cmp-long v3, v28, p5

    if-ltz v3, :cond_f

    .line 1013
    :cond_e
    add-int/lit8 v13, v13, 0x1

    .line 1017
    :cond_f
    cmp-long v3, v40, v22

    if-gtz v3, :cond_4

    .line 1027
    cmp-long v3, v40, p5

    if-gez v3, :cond_4

    .line 1036
    cmp-long v3, v40, p3

    if-ltz v3, :cond_10

    .line 1040
    if-eqz p7, :cond_19

    .line 1041
    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p8

    invoke-virtual {v0, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 1047
    :cond_10
    :goto_11
    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/calendarcommon2/EventRecurrence;->count:I

    if-lez v3, :cond_11

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/calendarcommon2/EventRecurrence;->count:I

    if-eq v3, v13, :cond_4

    .line 1053
    :cond_11
    add-int/lit8 v3, v15, 0x1

    .line 1054
    if-eqz v39, :cond_12

    move/from16 v0, v38

    if-lt v3, v0, :cond_1f

    .line 1055
    :cond_12
    add-int/lit8 v3, v16, 0x1

    .line 1056
    if-eqz v37, :cond_13

    move/from16 v0, v36

    if-lt v3, v0, :cond_1e

    .line 1057
    :cond_13
    add-int/lit8 v3, v17, 0x1

    .line 1058
    if-eqz v35, :cond_14

    move/from16 v0, v34

    if-lt v3, v0, :cond_1d

    .line 1059
    :cond_14
    add-int/lit8 v3, v9, 0x1

    move v4, v13

    goto/16 :goto_8

    :cond_15
    move v6, v10

    .line 949
    goto/16 :goto_a

    :cond_16
    move v5, v11

    .line 958
    goto :goto_c

    :cond_17
    move v4, v12

    .line 966
    goto :goto_e

    :cond_18
    move v3, v14

    .line 974
    goto :goto_10

    .line 1043
    :cond_19
    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p8

    invoke-virtual {v0, v3}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    goto :goto_11

    .line 1075
    :pswitch_7
    move-object/from16 v0, v27

    iget v7, v0, Landroid/text/format/Time;->second:I

    add-int/2addr v6, v7

    move-object/from16 v0, v27

    iput v6, v0, Landroid/text/format/Time;->second:I

    .line 1102
    :goto_12
    invoke-static/range {v27 .. v27}, Lcom/android/calendarcommon2/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 1103
    const/4 v6, 0x6

    move/from16 v0, v26

    if-eq v0, v6, :cond_1b

    const/4 v6, 0x5

    move/from16 v0, v26

    if-eq v0, v6, :cond_1b

    :cond_1a
    move/from16 v5, v21

    .line 1112
    goto/16 :goto_5

    .line 1078
    :pswitch_8
    move-object/from16 v0, v27

    iget v7, v0, Landroid/text/format/Time;->minute:I

    add-int/2addr v6, v7

    move-object/from16 v0, v27

    iput v6, v0, Landroid/text/format/Time;->minute:I

    goto :goto_12

    .line 1081
    :pswitch_9
    move-object/from16 v0, v27

    iget v7, v0, Landroid/text/format/Time;->hour:I

    add-int/2addr v6, v7

    move-object/from16 v0, v27

    iput v6, v0, Landroid/text/format/Time;->hour:I

    goto :goto_12

    .line 1084
    :pswitch_a
    move-object/from16 v0, v27

    iget v7, v0, Landroid/text/format/Time;->monthDay:I

    add-int/2addr v6, v7

    move-object/from16 v0, v27

    iput v6, v0, Landroid/text/format/Time;->monthDay:I

    goto :goto_12

    .line 1087
    :pswitch_b
    move-object/from16 v0, v27

    iget v7, v0, Landroid/text/format/Time;->month:I

    add-int/2addr v6, v7

    move-object/from16 v0, v27

    iput v6, v0, Landroid/text/format/Time;->month:I

    goto :goto_12

    .line 1090
    :pswitch_c
    move-object/from16 v0, v27

    iget v7, v0, Landroid/text/format/Time;->year:I

    add-int/2addr v6, v7

    move-object/from16 v0, v27

    iput v6, v0, Landroid/text/format/Time;->year:I

    goto :goto_12

    .line 1093
    :pswitch_d
    move-object/from16 v0, v27

    iget v7, v0, Landroid/text/format/Time;->monthDay:I

    add-int/2addr v6, v7

    move-object/from16 v0, v27

    iput v6, v0, Landroid/text/format/Time;->monthDay:I

    goto :goto_12

    .line 1096
    :pswitch_e
    move-object/from16 v0, v27

    iget v7, v0, Landroid/text/format/Time;->monthDay:I

    add-int/2addr v6, v7

    move-object/from16 v0, v27

    iput v6, v0, Landroid/text/format/Time;->monthDay:I

    goto :goto_12

    .line 1106
    :cond_1b
    move-object/from16 v0, v27

    iget v6, v0, Landroid/text/format/Time;->monthDay:I

    if-eq v6, v5, :cond_1a

    .line 1109
    add-int/lit8 v3, v3, 0x1

    .line 1110
    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V
    :try_end_2
    .catch Lcom/android/calendarcommon2/DateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_9

    :cond_1c
    move v9, v3

    goto/16 :goto_7

    :cond_1d
    move/from16 v17, v3

    goto/16 :goto_b

    :cond_1e
    move/from16 v16, v3

    goto/16 :goto_d

    :cond_1f
    move v15, v3

    goto/16 :goto_f

    :cond_20
    move/from16 v18, v3

    goto/16 :goto_7

    :cond_21
    move/from16 v25, v4

    goto/16 :goto_2

    :cond_22
    move/from16 v26, v5

    goto/16 :goto_1

    :cond_23
    move v3, v2

    goto/16 :goto_0

    .line 776
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

    .line 1073
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public expand(Landroid/text/format/Time;Lcom/android/calendarcommon2/RecurrenceSet;JJ)[J
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon2/DateException;
        }
    .end annotation

    .prologue
    .line 640
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 641
    iget-object v3, p0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    invoke-virtual {v3, v2}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 642
    iget-object v3, p0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mGenerated:Landroid/text/format/Time;

    invoke-virtual {v3, v2}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 648
    iget-object v2, p0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 649
    iget-object v2, p0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    invoke-static {v2}, Lcom/android/calendarcommon2/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v6

    .line 652
    const-wide/16 v2, -0x1

    cmp-long v2, p5, v2

    if-eqz v2, :cond_0

    .line 653
    iget-object v2, p0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-wide/from16 v0, p5

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 654
    iget-object v2, p0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    invoke-static {v2}, Lcom/android/calendarcommon2/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v8

    .line 659
    :goto_0
    new-instance v11, Ljava/util/TreeSet;

    invoke-direct {v11}, Ljava/util/TreeSet;-><init>()V

    .line 661
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendarcommon2/RecurrenceSet;->rrules:[Lcom/android/calendarcommon2/EventRecurrence;

    if-eqz v2, :cond_1

    .line 662
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/calendarcommon2/RecurrenceSet;->rrules:[Lcom/android/calendarcommon2/EventRecurrence;

    array-length v13, v12

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v13, :cond_1

    aget-object v5, v12, v2

    .line 663
    const/4 v10, 0x1

    move-object v3, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v11}, Lcom/android/calendarcommon2/RecurrenceProcessor;->expand(Landroid/text/format/Time;Lcom/android/calendarcommon2/EventRecurrence;JJZLjava/util/TreeSet;)V

    .line 662
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 656
    :cond_0
    const-wide v8, 0x7fffffffffffffffL

    goto :goto_0

    .line 667
    :cond_1
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendarcommon2/RecurrenceSet;->rdates:[J

    if-eqz v2, :cond_2

    .line 668
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/calendarcommon2/RecurrenceSet;->rdates:[J

    array-length v4, v3

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_2

    aget-wide v12, v3, v2

    .line 671
    iget-object v5, p0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    invoke-virtual {v5, v12, v13}, Landroid/text/format/Time;->set(J)V

    .line 672
    iget-object v5, p0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    invoke-static {v5}, Lcom/android/calendarcommon2/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v12

    .line 673
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 668
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 676
    :cond_2
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendarcommon2/RecurrenceSet;->exrules:[Lcom/android/calendarcommon2/EventRecurrence;

    if-eqz v2, :cond_3

    .line 677
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/calendarcommon2/RecurrenceSet;->exrules:[Lcom/android/calendarcommon2/EventRecurrence;

    array-length v13, v12

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v13, :cond_3

    aget-object v5, v12, v2

    .line 678
    const/4 v10, 0x0

    move-object v3, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v11}, Lcom/android/calendarcommon2/RecurrenceProcessor;->expand(Landroid/text/format/Time;Lcom/android/calendarcommon2/EventRecurrence;JJZLjava/util/TreeSet;)V

    .line 677
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 682
    :cond_3
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendarcommon2/RecurrenceSet;->exdates:[J

    if-eqz v2, :cond_4

    .line 683
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/calendarcommon2/RecurrenceSet;->exdates:[J

    array-length v4, v3

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v4, :cond_4

    aget-wide v6, v3, v2

    .line 686
    iget-object v5, p0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    invoke-virtual {v5, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 687
    iget-object v5, p0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    invoke-static {v5}, Lcom/android/calendarcommon2/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v6

    .line 688
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 683
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 691
    :cond_4
    invoke-virtual {v11}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 694
    const/4 v2, 0x0

    new-array v2, v2, [J

    .line 708
    :goto_5
    return-object v2

    .line 701
    :cond_5
    invoke-virtual {v11}, Ljava/util/TreeSet;->size()I

    move-result v2

    .line 702
    new-array v4, v2, [J

    .line 703
    const/4 v2, 0x0

    .line 704
    invoke-virtual {v11}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v2

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 705
    iget-object v6, p0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lcom/android/calendarcommon2/RecurrenceProcessor;->setTimeFromLongValue(Landroid/text/format/Time;J)V

    .line 706
    add-int/lit8 v2, v3, 0x1

    iget-object v6, p0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    aput-wide v6, v4, v3

    move v3, v2

    .line 707
    goto :goto_6

    :cond_6
    move-object v2, v4

    .line 708
    goto :goto_5
.end method
