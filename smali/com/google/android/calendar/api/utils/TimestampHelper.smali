.class public Lcom/google/android/calendar/api/utils/TimestampHelper;
.super Ljava/lang/Object;
.source "TimestampHelper.java"


# direct methods
.method public static isTimestampUtcMidnight(J)Z
    .locals 2

    .prologue
    .line 17
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 18
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 19
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xc

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xd

    .line 21
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xe

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 19
    :goto_0
    return v0

    .line 22
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static roundDownToUtcMidnight(JLjava/lang/String;)J
    .locals 2

    .prologue
    .line 33
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/calendar/api/utils/TimestampHelper;->roundToUtcMidnight(JLjava/lang/String;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method private static roundToUtcMidnight(JLjava/lang/String;Z)J
    .locals 10

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 58
    invoke-static {p0, p1}, Lcom/google/android/calendar/api/utils/TimestampHelper;->isTimestampUtcMidnight(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    :goto_0
    return-wide p0

    .line 62
    :cond_0
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 63
    invoke-virtual {v1, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 64
    if-eqz p2, :cond_1

    .line 65
    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 64
    :goto_1
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 67
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 68
    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 69
    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 71
    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 72
    const-string v4, "UTC"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 73
    invoke-virtual {v1, v6, v2}, Ljava/util/Calendar;->set(II)V

    .line 74
    invoke-virtual {v1, v7, v3}, Ljava/util/Calendar;->set(II)V

    .line 75
    if-eqz p3, :cond_2

    :goto_2
    invoke-virtual {v1, v8, v0}, Ljava/util/Calendar;->set(II)V

    .line 76
    const/16 v0, 0xb

    invoke-virtual {v1, v0, v5}, Ljava/util/Calendar;->set(II)V

    .line 77
    const/16 v0, 0xc

    invoke-virtual {v1, v0, v5}, Ljava/util/Calendar;->set(II)V

    .line 78
    const/16 v0, 0xd

    invoke-virtual {v1, v0, v5}, Ljava/util/Calendar;->set(II)V

    .line 79
    const/16 v0, 0xe

    invoke-virtual {v1, v0, v5}, Ljava/util/Calendar;->set(II)V

    .line 81
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    goto :goto_0

    .line 66
    :cond_1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    goto :goto_1

    .line 75
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static roundUpToUtcMidnight(JLjava/lang/String;)J
    .locals 2

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/calendar/api/utils/TimestampHelper;->roundToUtcMidnight(JLjava/lang/String;Z)J

    move-result-wide v0

    return-wide v0
.end method
