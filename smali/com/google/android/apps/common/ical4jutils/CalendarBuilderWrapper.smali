.class public Lcom/google/android/apps/common/ical4jutils/CalendarBuilderWrapper;
.super Lnet/fortuna/ical4j/data/CalendarBuilder;
.source "CalendarBuilderWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/common/ical4jutils/CalendarBuilderWrapper$DateUtils;,
        Lcom/google/android/apps/common/ical4jutils/CalendarBuilderWrapper$TimeUtils;
    }
.end annotation


# direct methods
.method public constructor <init>(Lnet/fortuna/ical4j/model/TimeZoneRegistry;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/data/CalendarBuilder;-><init>(Lnet/fortuna/ical4j/model/TimeZoneRegistry;)V

    .line 41
    return-void
.end method

.method private fixTimesInCalendar(Lnet/fortuna/ical4j/model/Calendar;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Calendar;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/common/ical4jutils/CalendarBuilderWrapper;->fixTimesInProperties(Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 77
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v0

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/ComponentList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 78
    check-cast v0, Lnet/fortuna/ical4j/model/Component;

    .line 79
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/common/ical4jutils/CalendarBuilderWrapper;->fixTimesInProperties(Lnet/fortuna/ical4j/model/PropertyList;)V

    goto :goto_0

    .line 81
    :cond_0
    return-void
.end method

.method private fixTimesInProperties(Lnet/fortuna/ical4j/model/PropertyList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/PropertyList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 95
    instance-of v1, v0, Lnet/fortuna/ical4j/model/property/DateProperty;

    if-eqz v1, :cond_0

    .line 98
    check-cast v0, Lnet/fortuna/ical4j/model/property/DateProperty;

    .line 99
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v1

    .line 102
    instance-of v3, v1, Lnet/fortuna/ical4j/model/DateTime;

    if-eqz v3, :cond_0

    .line 105
    check-cast v1, Lnet/fortuna/ical4j/model/DateTime;

    .line 107
    const-string v3, "TZID"

    invoke-virtual {v0, v3}, Lnet/fortuna/ical4j/model/property/DateProperty;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v3

    .line 108
    if-eqz v3, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/google/android/apps/common/ical4jutils/CalendarBuilderWrapper;->getRegistry()Lnet/fortuna/ical4j/model/TimeZoneRegistry;

    move-result-object v4

    invoke-virtual {v3}, Lnet/fortuna/ical4j/model/Parameter;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lnet/fortuna/ical4j/model/TimeZoneRegistry;->getTimeZone(Ljava/lang/String;)Lnet/fortuna/ical4j/model/TimeZone;

    move-result-object v3

    .line 114
    if-eqz v3, :cond_0

    .line 116
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/DateTime;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/google/android/apps/common/ical4jutils/CalendarBuilderWrapper$TimeUtils;->millisSincePosixEpochFromIcal(Ljava/lang/String;Lnet/fortuna/ical4j/model/TimeZone;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lnet/fortuna/ical4j/model/DateTime;->setTime(J)V

    .line 118
    invoke-virtual {v0, v3}, Lnet/fortuna/ical4j/model/property/DateProperty;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    goto :goto_0

    .line 121
    :cond_1
    return-void
.end method


# virtual methods
.method public build(Lnet/fortuna/ical4j/data/UnfoldingReader;)Lnet/fortuna/ical4j/model/Calendar;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-super {p0, p1}, Lnet/fortuna/ical4j/data/CalendarBuilder;->build(Lnet/fortuna/ical4j/data/UnfoldingReader;)Lnet/fortuna/ical4j/model/Calendar;

    move-result-object v0

    .line 60
    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/android/apps/common/ical4jutils/CalendarBuilderWrapper;->fixTimesInCalendar(Lnet/fortuna/ical4j/model/Calendar;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    return-object v0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    new-instance v1, Lnet/fortuna/ical4j/data/ParserException;

    const-string v2, "Builder can\'t fix time property"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lnet/fortuna/ical4j/data/ParserException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1
.end method
