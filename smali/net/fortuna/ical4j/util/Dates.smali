.class public final Lnet/fortuna/ical4j/util/Dates;
.super Ljava/lang/Object;
.source "Dates.java"


# direct methods
.method public static getAbsMonthDay(Ljava/util/Date;I)I
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x5

    const/4 v5, 0x1

    .line 192
    if-eqz p1, :cond_0

    const/16 v0, -0x1f

    if-lt p1, v0, :cond_0

    const/16 v0, 0x1f

    if-le p1, v0, :cond_1

    .line 193
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid month day [{0}]"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_1
    if-lez p1, :cond_2

    .line 209
    :goto_0
    return p1

    .line 199
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 200
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 201
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 203
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 204
    invoke-virtual {v0, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 205
    :goto_1
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, v1, :cond_3

    .line 206
    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-virtual {v0, v6, v5}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    .line 209
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0
.end method

.method public static getAbsWeekNo(Ljava/util/Date;I)I
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 132
    if-eqz p1, :cond_0

    const/16 v0, -0x35

    if-lt p1, v0, :cond_0

    const/16 v0, 0x35

    if-le p1, v0, :cond_1

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid week number [{0}]"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_1
    if-lez p1, :cond_2

    .line 149
    :goto_0
    return p1

    .line 139
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 140
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 141
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 143
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 144
    invoke-virtual {v0, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 145
    :goto_1
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, v1, :cond_3

    .line 146
    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-virtual {v0, v6, v5}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    .line 149
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0
.end method

.method public static getAbsYearDay(Ljava/util/Date;I)I
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x1

    .line 162
    if-eqz p1, :cond_0

    const/16 v0, -0x16e

    if-lt p1, v0, :cond_0

    const/16 v0, 0x16e

    if-le p1, v0, :cond_1

    .line 163
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid year day [{0}]"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_1
    if-lez p1, :cond_2

    .line 179
    :goto_0
    return p1

    .line 169
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 170
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 171
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 173
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 174
    invoke-virtual {v0, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 175
    :goto_1
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, v1, :cond_3

    .line 176
    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-virtual {v0, v6, v5}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    .line 179
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0
.end method

.method public static getCalendarInstance(Lnet/fortuna/ical4j/model/Date;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 233
    .line 234
    instance-of v0, p0, Lnet/fortuna/ical4j/model/DateTime;

    if-eqz v0, :cond_2

    .line 235
    check-cast p0, Lnet/fortuna/ical4j/model/DateTime;

    .line 236
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/DateTime;->getTimeZone()Lnet/fortuna/ical4j/model/TimeZone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/DateTime;->getTimeZone()Lnet/fortuna/ical4j/model/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 250
    :goto_0
    return-object v0

    .line 239
    :cond_0
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/DateTime;->isUtc()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    invoke-static {}, Lnet/fortuna/ical4j/util/TimeZones;->getUtcTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0

    .line 244
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0

    .line 248
    :cond_2
    invoke-static {}, Lnet/fortuna/ical4j/util/TimeZones;->getDateTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCurrentTimeRounded()J
    .locals 4

    .prologue
    .line 314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static getInstance(Ljava/util/Date;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/Date;
    .locals 1

    .prologue
    .line 220
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->DATE:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    new-instance v0, Lnet/fortuna/ical4j/model/Date;

    invoke-direct {v0, p0}, Lnet/fortuna/ical4j/model/Date;-><init>(Ljava/util/Date;)V

    .line 223
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lnet/fortuna/ical4j/model/DateTime;

    invoke-direct {v0, p0}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Ljava/util/Date;)V

    goto :goto_0
.end method

.method public static round(JILjava/util/TimeZone;)J
    .locals 6

    .prologue
    const/16 v4, 0xe

    .line 287
    if-nez p2, :cond_0

    const-wide/16 v0, 0x3e8

    rem-long v0, p0, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 304
    :goto_0
    return-wide p0

    .line 290
    :cond_0
    invoke-static {p3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 291
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 292
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 294
    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 295
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->clear(I)V

    .line 296
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->clear(I)V

    .line 297
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->clear(I)V

    .line 304
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    goto :goto_0

    .line 299
    :cond_2
    if-nez p2, :cond_1

    .line 301
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->clear(I)V

    goto :goto_1
.end method
