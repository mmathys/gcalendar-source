.class public Lnet/fortuna/ical4j/model/Time;
.super Lnet/fortuna/ical4j/model/Iso8601;
.source "Time.java"


# static fields
.field private static final serialVersionUID:J = -0x749662e062a34c1cL


# instance fields
.field private utc:Z


# direct methods
.method public constructor <init>(JLjava/util/TimeZone;)V
    .locals 1

    .prologue
    .line 88
    invoke-static {p3}, Lnet/fortuna/ical4j/util/TimeZones;->isUtc(Ljava/util/TimeZone;)Z

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lnet/fortuna/ical4j/model/Time;-><init>(JLjava/util/TimeZone;Z)V

    .line 89
    return-void
.end method

.method public constructor <init>(JLjava/util/TimeZone;Z)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 97
    if-eqz p4, :cond_0

    const-string v4, "HHmmss\'Z\'"

    :goto_0
    move-object v1, p0

    move-wide v2, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lnet/fortuna/ical4j/model/Iso8601;-><init>(JLjava/lang/String;ILjava/util/TimeZone;)V

    .line 54
    iput-boolean v5, p0, Lnet/fortuna/ical4j/model/Time;->utc:Z

    .line 98
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Time;->getFormat()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 99
    iput-boolean p4, p0, Lnet/fortuna/ical4j/model/Time;->utc:Z

    .line 100
    return-void

    .line 97
    :cond_0
    const-string v4, "HHmmss"

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/TimeZone;Z)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 116
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    if-eqz p3, :cond_0

    const-string v4, "HHmmss\'Z\'"

    :goto_0
    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lnet/fortuna/ical4j/model/Iso8601;-><init>(JLjava/lang/String;ILjava/util/TimeZone;)V

    .line 54
    iput-boolean v5, p0, Lnet/fortuna/ical4j/model/Time;->utc:Z

    .line 117
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Time;->getFormat()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 118
    iput-boolean p3, p0, Lnet/fortuna/ical4j/model/Time;->utc:Z

    .line 119
    return-void

    .line 116
    :cond_0
    const-string v4, "HHmmss"

    goto :goto_0
.end method


# virtual methods
.method public final isUtc()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lnet/fortuna/ical4j/model/Time;->utc:Z

    return v0
.end method
