.class public Lnet/fortuna/ical4j/model/Date;
.super Lnet/fortuna/ical4j/model/Iso8601;
.source "Date.java"


# static fields
.field private static final serialVersionUID:J = 0x63086c017885f5c5L


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 101
    const-string v0, "yyyyMMdd"

    const/4 v1, 0x1

    invoke-static {}, Lnet/fortuna/ical4j/util/TimeZones;->getDateTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lnet/fortuna/ical4j/model/Iso8601;-><init>(Ljava/lang/String;ILjava/util/TimeZone;)V

    .line 102
    return-void
.end method

.method protected constructor <init>(ILjava/util/TimeZone;)V
    .locals 1

    .prologue
    .line 113
    const-string v0, "yyyyMMdd"

    invoke-direct {p0, v0, p1, p2}, Lnet/fortuna/ical4j/model/Iso8601;-><init>(Ljava/lang/String;ILjava/util/TimeZone;)V

    .line 114
    return-void
.end method

.method public constructor <init>(J)V
    .locals 7

    .prologue
    .line 120
    const-string v4, "yyyyMMdd"

    const/4 v5, 0x1

    invoke-static {}, Lnet/fortuna/ical4j/util/TimeZones;->getDateTimeZone()Ljava/util/TimeZone;

    move-result-object v6

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v1 .. v6}, Lnet/fortuna/ical4j/model/Iso8601;-><init>(JLjava/lang/String;ILjava/util/TimeZone;)V

    .line 121
    return-void
.end method

.method protected constructor <init>(JILjava/util/TimeZone;)V
    .locals 7

    .prologue
    .line 133
    const-string v4, "yyyyMMdd"

    move-object v1, p0

    move-wide v2, p1

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lnet/fortuna/ical4j/model/Iso8601;-><init>(JLjava/lang/String;ILjava/util/TimeZone;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/Date;-><init>()V

    .line 152
    :try_start_0
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Date;->getFormat()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/Date;->setTime(J)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    const-string v1, "ical4j.compatibility.vcard"

    invoke-static {v1}, Lnet/fortuna/ical4j/util/CompatibilityHints;->isHintEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy\'-\'MM\'-\'dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lnet/fortuna/ical4j/util/TimeZones;->getDateTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 157
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/Date;->setTime(J)V

    goto :goto_0

    .line 160
    :cond_0
    throw v0
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 4

    .prologue
    .line 141
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-static {}, Lnet/fortuna/ical4j/util/TimeZones;->getDateTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lnet/fortuna/ical4j/model/Date;-><init>(JILjava/util/TimeZone;)V

    .line 143
    return-void
.end method
