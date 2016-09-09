.class public final Lnet/fortuna/ical4j/model/CalendarDateFormatFactory;
.super Ljava/lang/Object;
.source "CalendarDateFormatFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/CalendarDateFormatFactory$TimeFormat;,
        Lnet/fortuna/ical4j/model/CalendarDateFormatFactory$DateFormat;,
        Lnet/fortuna/ical4j/model/CalendarDateFormatFactory$DateTimeFormat;,
        Lnet/fortuna/ical4j/model/CalendarDateFormatFactory$CalendarDateFormat;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory;->LOG:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method static synthetic access$000(Ljava/lang/StringBuffer;II)V
    .locals 0

    .prologue
    .line 53
    invoke-static {p0, p1, p2}, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory;->appendPadded(Ljava/lang/StringBuffer;II)V

    return-void
.end method

.method static synthetic access$100(ZLjava/util/TimeZone;IIIIII)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 53
    invoke-static/range {p0 .. p7}, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory;->makeCalendar(ZLjava/util/TimeZone;IIIIII)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(ZLjava/util/TimeZone;III)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 53
    invoke-static {p0, p1, p2, p3, p4}, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory;->makeCalendar(ZLjava/util/TimeZone;III)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method private static appendPadded(Ljava/lang/StringBuffer;II)V
    .locals 4

    .prologue
    .line 412
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 413
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v2, p2, v0

    .line 414
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 415
    const-string v3, "0"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 414
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 417
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 418
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/text/DateFormat;
    .locals 4

    .prologue
    .line 78
    .line 84
    const-string v0, "yyyyMMdd\'T\'HHmmss"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "yyyyMMdd\'T\'HHmmss\'Z\'"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    :cond_0
    new-instance v0, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory$DateTimeFormat;

    invoke-direct {v0, p0}, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory$DateTimeFormat;-><init>(Ljava/lang/String;)V

    .line 100
    :goto_0
    return-object v0

    .line 87
    :cond_1
    const-string v0, "yyyyMMdd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    new-instance v0, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory$DateFormat;

    invoke-direct {v0, p0}, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory$DateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_2
    const-string v0, "HHmmss"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "HHmmss\'Z\'"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 91
    :cond_3
    new-instance v0, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory$TimeFormat;

    invoke-direct {v0, p0}, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory$TimeFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_4
    sget-object v0, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 95
    sget-object v1, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "unexpected date format pattern: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {v1, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 98
    :cond_5
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static makeCalendar(ZLjava/util/TimeZone;III)Ljava/util/Calendar;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 408
    move v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, v5

    move v7, v5

    invoke-static/range {v0 .. v7}, Lnet/fortuna/ical4j/model/CalendarDateFormatFactory;->makeCalendar(ZLjava/util/TimeZone;IIIIII)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method private static makeCalendar(ZLjava/util/TimeZone;IIIIII)Ljava/util/Calendar;
    .locals 7

    .prologue
    .line 400
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 401
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setLenient(Z)V

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    .line 402
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 403
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 404
    return-object v0
.end method
