.class public Lnet/fortuna/ical4j/model/Dur;
.super Ljava/lang/Object;
.source "Dur.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# static fields
.field private static final serialVersionUID:J = 0x45929432e6235677L


# instance fields
.field private days:I

.field private hours:I

.field private minutes:I

.field private negative:Z

.field private seconds:I

.field private weeks:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    if-gez p4, :cond_2

    :cond_0
    if-gtz p1, :cond_1

    if-gtz p2, :cond_1

    if-gtz p3, :cond_1

    if-lez p4, :cond_2

    .line 177
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid duration representation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_2
    iput v0, p0, Lnet/fortuna/ical4j/model/Dur;->weeks:I

    .line 181
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Lnet/fortuna/ical4j/model/Dur;->days:I

    .line 182
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Lnet/fortuna/ical4j/model/Dur;->hours:I

    .line 183
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Lnet/fortuna/ical4j/model/Dur;->minutes:I

    .line 184
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Lnet/fortuna/ical4j/model/Dur;->seconds:I

    .line 186
    if-ltz p1, :cond_3

    if-ltz p2, :cond_3

    if-ltz p3, :cond_3

    if-gez p4, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    iput-boolean v0, p0, Lnet/fortuna/ical4j/model/Dur;->negative:Z

    .line 187
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-boolean v4, p0, Lnet/fortuna/ical4j/model/Dur;->negative:Z

    .line 107
    iput v4, p0, Lnet/fortuna/ical4j/model/Dur;->weeks:I

    .line 108
    iput v4, p0, Lnet/fortuna/ical4j/model/Dur;->days:I

    .line 109
    iput v4, p0, Lnet/fortuna/ical4j/model/Dur;->hours:I

    .line 110
    iput v4, p0, Lnet/fortuna/ical4j/model/Dur;->minutes:I

    .line 111
    iput v4, p0, Lnet/fortuna/ical4j/model/Dur;->seconds:I

    .line 113
    const/4 v0, 0x0

    .line 116
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v1, "+-PWDTHMS"

    invoke-direct {v2, p1, v1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 117
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 119
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 121
    const-string v3, "+"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 122
    iput-boolean v4, p0, Lnet/fortuna/ical4j/model/Dur;->negative:Z

    move-object v0, v1

    goto :goto_0

    .line 124
    :cond_0
    const-string v3, "-"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 125
    iput-boolean v5, p0, Lnet/fortuna/ical4j/model/Dur;->negative:Z

    move-object v0, v1

    goto :goto_0

    .line 127
    :cond_1
    const-string v3, "P"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, v1

    goto :goto_0

    .line 130
    :cond_2
    const-string v3, "W"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 131
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/fortuna/ical4j/model/Dur;->weeks:I

    move-object v0, v1

    goto :goto_0

    .line 133
    :cond_3
    const-string v3, "D"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 134
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/fortuna/ical4j/model/Dur;->days:I

    move-object v0, v1

    goto :goto_0

    .line 136
    :cond_4
    const-string v3, "T"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, v1

    goto :goto_0

    .line 139
    :cond_5
    const-string v3, "H"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 140
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/fortuna/ical4j/model/Dur;->hours:I

    move-object v0, v1

    goto :goto_0

    .line 142
    :cond_6
    const-string v3, "M"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 143
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/fortuna/ical4j/model/Dur;->minutes:I

    move-object v0, v1

    goto :goto_0

    .line 145
    :cond_7
    const-string v3, "S"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 146
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/fortuna/ical4j/model/Dur;->seconds:I

    move-object v0, v1

    goto/16 :goto_0

    .line 149
    :cond_8
    return-void

    :cond_9
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/Date;)V
    .locals 11

    .prologue
    const/16 v10, 0xc

    const/16 v9, 0xb

    const/4 v8, 0x6

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    invoke-virtual {p1, p2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    if-lez v0, :cond_0

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lnet/fortuna/ical4j/model/Dur;->negative:Z

    .line 202
    iget-boolean v0, p0, Lnet/fortuna/ical4j/model/Dur;->negative:Z

    if-eqz v0, :cond_1

    move-object v1, p2

    .line 214
    :goto_1
    instance-of v0, v1, Lnet/fortuna/ical4j/model/Date;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 215
    check-cast v0, Lnet/fortuna/ical4j/model/Date;

    invoke-static {v0}, Lnet/fortuna/ical4j/util/Dates;->getCalendarInstance(Lnet/fortuna/ical4j/model/Date;)Ljava/util/Calendar;

    move-result-object v0

    .line 219
    :goto_2
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 220
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v5

    .line 221
    invoke-virtual {v5, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 229
    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sub-int/2addr v1, v4

    move v4, v3

    .line 230
    :goto_3
    if-lez v1, :cond_3

    .line 231
    const/4 v6, 0x5

    mul-int/lit16 v7, v1, 0x16d

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->add(II)V

    .line 232
    mul-int/lit16 v1, v1, 0x16d

    add-int/2addr v4, v1

    .line 233
    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    sub-int/2addr v1, v6

    goto :goto_3

    :cond_0
    move v0, v3

    .line 201
    goto :goto_0

    :cond_1
    move-object v1, p1

    move-object p1, p2

    .line 210
    goto :goto_1

    .line 217
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    goto :goto_2

    .line 237
    :cond_3
    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 238
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, v4

    .line 241
    mul-int/lit8 v1, v1, 0x18

    .line 242
    invoke-virtual {v5, v9}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 243
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sub-int/2addr v2, v4

    add-int/2addr v1, v2

    .line 246
    mul-int/lit8 v1, v1, 0x3c

    .line 247
    invoke-virtual {v5, v10}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sub-int/2addr v2, v4

    add-int/2addr v1, v2

    .line 250
    mul-int/lit8 v1, v1, 0x3c

    .line 251
    const/16 v2, 0xd

    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int v0, v2, v0

    add-int/2addr v0, v1

    .line 254
    rem-int/lit8 v1, v0, 0x3c

    iput v1, p0, Lnet/fortuna/ical4j/model/Dur;->seconds:I

    .line 255
    div-int/lit8 v0, v0, 0x3c

    .line 256
    rem-int/lit8 v1, v0, 0x3c

    iput v1, p0, Lnet/fortuna/ical4j/model/Dur;->minutes:I

    .line 257
    div-int/lit8 v0, v0, 0x3c

    .line 258
    rem-int/lit8 v1, v0, 0x18

    iput v1, p0, Lnet/fortuna/ical4j/model/Dur;->hours:I

    .line 259
    div-int/lit8 v0, v0, 0x18

    .line 260
    iput v0, p0, Lnet/fortuna/ical4j/model/Dur;->days:I

    .line 261
    iput v3, p0, Lnet/fortuna/ical4j/model/Dur;->weeks:I

    .line 264
    iget v0, p0, Lnet/fortuna/ical4j/model/Dur;->seconds:I

    if-nez v0, :cond_4

    iget v0, p0, Lnet/fortuna/ical4j/model/Dur;->minutes:I

    if-nez v0, :cond_4

    iget v0, p0, Lnet/fortuna/ical4j/model/Dur;->hours:I

    if-nez v0, :cond_4

    iget v0, p0, Lnet/fortuna/ical4j/model/Dur;->days:I

    rem-int/lit8 v0, v0, 0x7

    if-nez v0, :cond_4

    .line 266
    iget v0, p0, Lnet/fortuna/ical4j/model/Dur;->days:I

    div-int/lit8 v0, v0, 0x7

    iput v0, p0, Lnet/fortuna/ical4j/model/Dur;->weeks:I

    .line 267
    iput v3, p0, Lnet/fortuna/ical4j/model/Dur;->days:I

    .line 269
    :cond_4
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 526
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 527
    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 415
    check-cast p1, Lnet/fortuna/ical4j/model/Dur;

    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/Dur;->compareTo(Lnet/fortuna/ical4j/model/Dur;)I

    move-result v0

    return v0
.end method

.method public final compareTo(Lnet/fortuna/ical4j/model/Dur;)I
    .locals 2

    .prologue
    .line 426
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Dur;->isNegative()Z

    move-result v0

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Dur;->isNegative()Z

    move-result v1

    if-eq v0, v1, :cond_2

    .line 429
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Dur;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 430
    const/high16 v0, -0x80000000

    .line 456
    :cond_0
    :goto_0
    return v0

    .line 433
    :cond_1
    const v0, 0x7fffffff

    goto :goto_0

    .line 436
    :cond_2
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Dur;->getWeeks()I

    move-result v0

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Dur;->getWeeks()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 437
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Dur;->getWeeks()I

    move-result v0

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Dur;->getWeeks()I

    move-result v1

    sub-int/2addr v0, v1

    .line 452
    :goto_1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Dur;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 453
    neg-int v0, v0

    goto :goto_0

    .line 439
    :cond_3
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Dur;->getDays()I

    move-result v0

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Dur;->getDays()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 440
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Dur;->getDays()I

    move-result v0

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Dur;->getDays()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_1

    .line 442
    :cond_4
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Dur;->getHours()I

    move-result v0

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Dur;->getHours()I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 443
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Dur;->getHours()I

    move-result v0

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Dur;->getHours()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_1

    .line 445
    :cond_5
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Dur;->getMinutes()I

    move-result v0

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Dur;->getMinutes()I

    move-result v1

    if-eq v0, v1, :cond_6

    .line 446
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Dur;->getMinutes()I

    move-result v0

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Dur;->getMinutes()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_1

    .line 449
    :cond_6
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Dur;->getSeconds()I

    move-result v0

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Dur;->getSeconds()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 464
    instance-of v0, p1, Lnet/fortuna/ical4j/model/Dur;

    if-eqz v0, :cond_1

    .line 465
    check-cast p1, Lnet/fortuna/ical4j/model/Dur;

    invoke-virtual {p1, p0}, Lnet/fortuna/ical4j/model/Dur;->compareTo(Lnet/fortuna/ical4j/model/Dur;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 467
    :goto_0
    return v0

    .line 465
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 467
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final getDays()I
    .locals 1

    .prologue
    .line 482
    iget v0, p0, Lnet/fortuna/ical4j/model/Dur;->days:I

    return v0
.end method

.method public final getHours()I
    .locals 1

    .prologue
    .line 489
    iget v0, p0, Lnet/fortuna/ical4j/model/Dur;->hours:I

    return v0
.end method

.method public final getMinutes()I
    .locals 1

    .prologue
    .line 496
    iget v0, p0, Lnet/fortuna/ical4j/model/Dur;->minutes:I

    return v0
.end method

.method public final getSeconds()I
    .locals 1

    .prologue
    .line 510
    iget v0, p0, Lnet/fortuna/ical4j/model/Dur;->seconds:I

    return v0
.end method

.method public final getTime(Ljava/util/Date;)Ljava/util/Date;
    .locals 7

    .prologue
    const/16 v6, 0xd

    const/16 v5, 0xc

    const/16 v4, 0xb

    const/4 v3, 0x7

    const/4 v2, 0x3

    .line 278
    instance-of v0, p1, Lnet/fortuna/ical4j/model/Date;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 279
    check-cast v0, Lnet/fortuna/ical4j/model/Date;

    invoke-static {v0}, Lnet/fortuna/ical4j/util/Dates;->getCalendarInstance(Lnet/fortuna/ical4j/model/Date;)Ljava/util/Calendar;

    move-result-object v0

    .line 284
    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 285
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Dur;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 286
    iget v1, p0, Lnet/fortuna/ical4j/model/Dur;->weeks:I

    neg-int v1, v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 287
    iget v1, p0, Lnet/fortuna/ical4j/model/Dur;->days:I

    neg-int v1, v1

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->add(II)V

    .line 288
    iget v1, p0, Lnet/fortuna/ical4j/model/Dur;->hours:I

    neg-int v1, v1

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->add(II)V

    .line 289
    iget v1, p0, Lnet/fortuna/ical4j/model/Dur;->minutes:I

    neg-int v1, v1

    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->add(II)V

    .line 290
    iget v1, p0, Lnet/fortuna/ical4j/model/Dur;->seconds:I

    neg-int v1, v1

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->add(II)V

    .line 299
    :goto_1
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 281
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0

    .line 293
    :cond_1
    iget v1, p0, Lnet/fortuna/ical4j/model/Dur;->weeks:I

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 294
    iget v1, p0, Lnet/fortuna/ical4j/model/Dur;->days:I

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->add(II)V

    .line 295
    iget v1, p0, Lnet/fortuna/ical4j/model/Dur;->hours:I

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->add(II)V

    .line 296
    iget v1, p0, Lnet/fortuna/ical4j/model/Dur;->minutes:I

    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->add(II)V

    .line 297
    iget v1, p0, Lnet/fortuna/ical4j/model/Dur;->seconds:I

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->add(II)V

    goto :goto_1
.end method

.method public final getWeeks()I
    .locals 1

    .prologue
    .line 517
    iget v0, p0, Lnet/fortuna/ical4j/model/Dur;->weeks:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 474
    new-instance v0, Lorg/apache/commons/lang/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;-><init>()V

    iget v1, p0, Lnet/fortuna/ical4j/model/Dur;->weeks:I

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(I)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v0

    iget v1, p0, Lnet/fortuna/ical4j/model/Dur;->days:I

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(I)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v0

    iget v1, p0, Lnet/fortuna/ical4j/model/Dur;->hours:I

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(I)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v0

    iget v1, p0, Lnet/fortuna/ical4j/model/Dur;->minutes:I

    .line 475
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(I)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v0

    iget v1, p0, Lnet/fortuna/ical4j/model/Dur;->seconds:I

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(I)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lnet/fortuna/ical4j/model/Dur;->negative:Z

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Z)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    .line 474
    return v0
.end method

.method public final isNegative()Z
    .locals 1

    .prologue
    .line 503
    iget-boolean v0, p0, Lnet/fortuna/ical4j/model/Dur;->negative:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 374
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 375
    iget-boolean v1, p0, Lnet/fortuna/ical4j/model/Dur;->negative:Z

    if-eqz v1, :cond_0

    .line 376
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 378
    :cond_0
    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 379
    iget v1, p0, Lnet/fortuna/ical4j/model/Dur;->weeks:I

    if-lez v1, :cond_2

    .line 380
    iget v1, p0, Lnet/fortuna/ical4j/model/Dur;->weeks:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 381
    const/16 v1, 0x57

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 408
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 384
    :cond_2
    iget v1, p0, Lnet/fortuna/ical4j/model/Dur;->days:I

    if-lez v1, :cond_3

    .line 385
    iget v1, p0, Lnet/fortuna/ical4j/model/Dur;->days:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 386
    const/16 v1, 0x44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 388
    :cond_3
    iget v1, p0, Lnet/fortuna/ical4j/model/Dur;->hours:I

    if-gtz v1, :cond_4

    iget v1, p0, Lnet/fortuna/ical4j/model/Dur;->minutes:I

    if-gtz v1, :cond_4

    iget v1, p0, Lnet/fortuna/ical4j/model/Dur;->seconds:I

    if-lez v1, :cond_7

    .line 389
    :cond_4
    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 390
    iget v1, p0, Lnet/fortuna/ical4j/model/Dur;->hours:I

    if-lez v1, :cond_5

    .line 391
    iget v1, p0, Lnet/fortuna/ical4j/model/Dur;->hours:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 392
    const/16 v1, 0x48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 394
    :cond_5
    iget v1, p0, Lnet/fortuna/ical4j/model/Dur;->minutes:I

    if-lez v1, :cond_6

    .line 395
    iget v1, p0, Lnet/fortuna/ical4j/model/Dur;->minutes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 396
    const/16 v1, 0x4d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 398
    :cond_6
    iget v1, p0, Lnet/fortuna/ical4j/model/Dur;->seconds:I

    if-lez v1, :cond_7

    .line 399
    iget v1, p0, Lnet/fortuna/ical4j/model/Dur;->seconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 400
    const/16 v1, 0x53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 404
    :cond_7
    iget v1, p0, Lnet/fortuna/ical4j/model/Dur;->hours:I

    iget v2, p0, Lnet/fortuna/ical4j/model/Dur;->minutes:I

    add-int/2addr v1, v2

    iget v2, p0, Lnet/fortuna/ical4j/model/Dur;->seconds:I

    add-int/2addr v1, v2

    iget v2, p0, Lnet/fortuna/ical4j/model/Dur;->days:I

    add-int/2addr v1, v2

    iget v2, p0, Lnet/fortuna/ical4j/model/Dur;->weeks:I

    add-int/2addr v1, v2

    if-nez v1, :cond_1

    .line 405
    const-string v1, "T0S"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
