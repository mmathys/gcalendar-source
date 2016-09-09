.class public abstract Lnet/fortuna/ical4j/model/Iso8601;
.super Ljava/util/Date;
.source "Iso8601.java"


# static fields
.field private static final serialVersionUID:J = -0x3b8bba63506668bbL


# instance fields
.field private format:Ljava/text/DateFormat;

.field private gmtFormat:Ljava/text/DateFormat;

.field private precision:I


# direct methods
.method public constructor <init>(JLjava/lang/String;ILjava/util/TimeZone;)V
    .locals 3

    .prologue
    .line 74
    invoke-static {p1, p2, p4, p5}, Lnet/fortuna/ical4j/util/Dates;->round(JILjava/util/TimeZone;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 76
    invoke-static {p3}, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory;->getInstance(Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/Iso8601;->format:Ljava/text/DateFormat;

    .line 77
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Iso8601;->format:Ljava/text/DateFormat;

    invoke-virtual {v0, p5}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 78
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Iso8601;->format:Ljava/text/DateFormat;

    const-string v1, "ical4j.parsing.relaxed"

    invoke-static {v1}, Lnet/fortuna/ical4j/util/CompatibilityHints;->isHintEnabled(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setLenient(Z)V

    .line 83
    iput p4, p0, Lnet/fortuna/ical4j/model/Iso8601;->precision:I

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/TimeZone;)V
    .locals 7

    .prologue
    .line 94
    invoke-static {}, Lnet/fortuna/ical4j/util/Dates;->getCurrentTimeRounded()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lnet/fortuna/ical4j/model/Iso8601;-><init>(JLjava/lang/String;ILjava/util/TimeZone;)V

    .line 95
    return-void
.end method


# virtual methods
.method protected final getFormat()Ljava/text/DateFormat;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Iso8601;->format:Ljava/text/DateFormat;

    return-object v0
.end method

.method public setTime(J)V
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Iso8601;->format:Ljava/text/DateFormat;

    if-eqz v0, :cond_0

    .line 149
    iget v0, p0, Lnet/fortuna/ical4j/model/Iso8601;->precision:I

    iget-object v1, p0, Lnet/fortuna/ical4j/model/Iso8601;->format:Ljava/text/DateFormat;

    invoke-virtual {v1}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lnet/fortuna/ical4j/util/Dates;->round(JILjava/util/TimeZone;)J

    move-result-wide v0

    invoke-super {p0, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/util/Date;->setTime(J)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 115
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Iso8601;->format:Ljava/text/DateFormat;

    invoke-virtual {v0}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 116
    instance-of v0, v1, Lnet/fortuna/ical4j/model/TimeZone;

    if-nez v0, :cond_2

    .line 117
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Iso8601;->gmtFormat:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Iso8601;->format:Ljava/text/DateFormat;

    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    iput-object v0, p0, Lnet/fortuna/ical4j/model/Iso8601;->gmtFormat:Ljava/text/DateFormat;

    .line 119
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Iso8601;->gmtFormat:Ljava/text/DateFormat;

    const-string v2, "Etc/GMT"

    invoke-static {v2}, Lnet/fortuna/ical4j/model/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 121
    :cond_0
    invoke-virtual {v1, p0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/Date;

    .line 122
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Iso8601;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Iso8601;->gmtFormat:Ljava/text/DateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Iso8601;->getTime()J

    move-result-wide v4

    .line 125
    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    .line 126
    invoke-virtual {v1}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v1

    int-to-long v6, v1

    add-long/2addr v4, v6

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 124
    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 132
    :goto_0
    return-object v0

    .line 130
    :cond_1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Iso8601;->gmtFormat:Ljava/text/DateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Iso8601;->getTime()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    int-to-long v6, v1

    add-long/2addr v4, v6

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 132
    :cond_2
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Iso8601;->format:Ljava/text/DateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
