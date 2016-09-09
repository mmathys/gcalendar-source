.class public Lnet/fortuna/ical4j/model/DateTime;
.super Lnet/fortuna/ical4j/model/Date;
.source "DateTime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;
    }
.end annotation


# static fields
.field private static final DEFAULT_FORMAT:Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

.field private static final LENIENT_DEFAULT_FORMAT:Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

.field private static final RELAXED_FORMAT:Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

.field private static final UTC_FORMAT:Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

.field private static final VCARD_FORMAT:Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

.field private static final serialVersionUID:J = -0x58eb0ef91a882e03L


# instance fields
.field private time:Lnet/fortuna/ical4j/model/Time;

.field private timezone:Lnet/fortuna/ical4j/model/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 173
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd\'T\'HHmmss\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-static {}, Lnet/fortuna/ical4j/util/TimeZones;->getUtcTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 175
    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->setLenient(Z)V

    .line 177
    new-instance v1, Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

    invoke-direct {v1, v0, v2}, Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;-><init>(Ljava/text/DateFormat;Lnet/fortuna/ical4j/model/DateTime$1;)V

    sput-object v1, Lnet/fortuna/ical4j/model/DateTime;->UTC_FORMAT:Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

    .line 185
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->setLenient(Z)V

    .line 187
    new-instance v1, Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

    invoke-direct {v1, v0, v2}, Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;-><init>(Ljava/text/DateFormat;Lnet/fortuna/ical4j/model/DateTime$1;)V

    sput-object v1, Lnet/fortuna/ical4j/model/DateTime;->DEFAULT_FORMAT:Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

    .line 192
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 193
    new-instance v1, Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

    invoke-direct {v1, v0, v2}, Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;-><init>(Ljava/text/DateFormat;Lnet/fortuna/ical4j/model/DateTime$1;)V

    sput-object v1, Lnet/fortuna/ical4j/model/DateTime;->LENIENT_DEFAULT_FORMAT:Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

    .line 198
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 199
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setLenient(Z)V

    .line 200
    new-instance v1, Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

    invoke-direct {v1, v0, v2}, Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;-><init>(Ljava/text/DateFormat;Lnet/fortuna/ical4j/model/DateTime$1;)V

    sput-object v1, Lnet/fortuna/ical4j/model/DateTime;->RELAXED_FORMAT:Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

    .line 205
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy\'-\'MM\'-\'dd\'T\'HH\':\'mm\':\'ss\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 206
    new-instance v1, Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

    invoke-direct {v1, v0, v2}, Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;-><init>(Ljava/text/DateFormat;Lnet/fortuna/ical4j/model/DateTime$1;)V

    sput-object v1, Lnet/fortuna/ical4j/model/DateTime;->VCARD_FORMAT:Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

    .line 207
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 217
    const/4 v0, 0x0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Date;-><init>(ILjava/util/TimeZone;)V

    .line 218
    new-instance v0, Lnet/fortuna/ical4j/model/Time;

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/DateTime;->getTime()J

    move-result-wide v2

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/DateTime;->getFormat()Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lnet/fortuna/ical4j/model/Time;-><init>(JLjava/util/TimeZone;)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/DateTime;->time:Lnet/fortuna/ical4j/model/Time;

    .line 219
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    .prologue
    .line 235
    const/4 v0, 0x0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lnet/fortuna/ical4j/model/Date;-><init>(JILjava/util/TimeZone;)V

    .line 236
    new-instance v0, Lnet/fortuna/ical4j/model/Time;

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/DateTime;->getFormat()Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lnet/fortuna/ical4j/model/Time;-><init>(JLjava/util/TimeZone;)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/DateTime;->time:Lnet/fortuna/ical4j/model/Time;

    .line 237
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 267
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/TimeZone;)V

    .line 276
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/TimeZone;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 293
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    move-object v0, p2

    :goto_0
    invoke-direct {p0, v2, v3, v1, v0}, Lnet/fortuna/ical4j/model/Date;-><init>(JILjava/util/TimeZone;)V

    .line 295
    new-instance v0, Lnet/fortuna/ical4j/model/Time;

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/DateTime;->getTime()J

    move-result-wide v2

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/DateTime;->getFormat()Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lnet/fortuna/ical4j/model/Time;-><init>(JLjava/util/TimeZone;)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/DateTime;->time:Lnet/fortuna/ical4j/model/Time;

    .line 298
    :try_start_0
    const-string v0, "Z"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 299
    sget-object v0, Lnet/fortuna/ical4j/model/DateTime;->UTC_FORMAT:Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;->get()Ljava/text/DateFormat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lnet/fortuna/ical4j/model/DateTime;->setTime(Ljava/lang/String;Ljava/text/DateFormat;Ljava/util/TimeZone;)V

    .line 300
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/DateTime;->setUtc(Z)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :cond_0
    :goto_1
    return-void

    .line 294
    :cond_1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    goto :goto_0

    .line 302
    :cond_2
    if-eqz p2, :cond_3

    .line 303
    :try_start_1
    sget-object v0, Lnet/fortuna/ical4j/model/DateTime;->DEFAULT_FORMAT:Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;->get()Ljava/text/DateFormat;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lnet/fortuna/ical4j/model/DateTime;->setTime(Ljava/lang/String;Ljava/text/DateFormat;Ljava/util/TimeZone;)V

    .line 312
    :goto_2
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/DateTime;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 314
    :catch_0
    move-exception v0

    .line 315
    const-string v1, "ical4j.compatibility.vcard"

    invoke-static {v1}, Lnet/fortuna/ical4j/util/CompatibilityHints;->isHintEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 318
    :try_start_2
    sget-object v0, Lnet/fortuna/ical4j/model/DateTime;->VCARD_FORMAT:Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;->get()Ljava/text/DateFormat;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lnet/fortuna/ical4j/model/DateTime;->setTime(Ljava/lang/String;Ljava/text/DateFormat;Ljava/util/TimeZone;)V

    .line 319
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/DateTime;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 320
    :catch_1
    move-exception v0

    .line 321
    const-string v0, "ical4j.parsing.relaxed"

    invoke-static {v0}, Lnet/fortuna/ical4j/util/CompatibilityHints;->isHintEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    sget-object v0, Lnet/fortuna/ical4j/model/DateTime;->RELAXED_FORMAT:Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;->get()Ljava/text/DateFormat;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lnet/fortuna/ical4j/model/DateTime;->setTime(Ljava/lang/String;Ljava/text/DateFormat;Ljava/util/TimeZone;)V

    .line 323
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/DateTime;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    goto :goto_1

    .line 309
    :cond_3
    :try_start_3
    sget-object v0, Lnet/fortuna/ical4j/model/DateTime;->LENIENT_DEFAULT_FORMAT:Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;->get()Ljava/text/DateFormat;

    move-result-object v0

    .line 310
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/DateTime;->getFormat()Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 309
    invoke-direct {p0, p1, v0, v1}, Lnet/fortuna/ical4j/model/DateTime;->setTime(Ljava/lang/String;Ljava/text/DateFormat;Ljava/util/TimeZone;)V
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 326
    :cond_4
    const-string v1, "ical4j.parsing.relaxed"

    invoke-static {v1}, Lnet/fortuna/ical4j/util/CompatibilityHints;->isHintEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 327
    sget-object v0, Lnet/fortuna/ical4j/model/DateTime;->RELAXED_FORMAT:Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;->get()Ljava/text/DateFormat;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lnet/fortuna/ical4j/model/DateTime;->setTime(Ljava/lang/String;Ljava/text/DateFormat;Ljava/util/TimeZone;)V

    .line 328
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/DateTime;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    goto :goto_1

    .line 330
    :cond_5
    throw v0
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 4

    .prologue
    .line 244
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lnet/fortuna/ical4j/model/Date;-><init>(JILjava/util/TimeZone;)V

    .line 245
    new-instance v0, Lnet/fortuna/ical4j/model/Time;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/DateTime;->getFormat()Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lnet/fortuna/ical4j/model/Time;-><init>(JLjava/util/TimeZone;)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/DateTime;->time:Lnet/fortuna/ical4j/model/Time;

    .line 247
    instance-of v0, p1, Lnet/fortuna/ical4j/model/DateTime;

    if-eqz v0, :cond_0

    .line 248
    check-cast p1, Lnet/fortuna/ical4j/model/DateTime;

    .line 249
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateTime;->isUtc()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/DateTime;->setUtc(Z)V

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateTime;->getTimeZone()Lnet/fortuna/ical4j/model/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/DateTime;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    goto :goto_0
.end method

.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/DateTime;-><init>()V

    .line 227
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/DateTime;->setUtc(Z)V

    .line 228
    return-void
.end method

.method private resetTimeZone()V
    .locals 2

    .prologue
    .line 463
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/DateTime;->getFormat()Ljava/text/DateFormat;

    move-result-object v0

    invoke-static {}, Lnet/fortuna/ical4j/model/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 465
    return-void
.end method

.method private setTime(Ljava/lang/String;Ljava/text/DateFormat;Ljava/util/TimeZone;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 394
    if-eqz p3, :cond_0

    .line 395
    invoke-virtual {p2, p3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 397
    :cond_0
    invoke-virtual {p2, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/DateTime;->setTime(J)V

    .line 398
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 492
    instance-of v0, p1, Lnet/fortuna/ical4j/model/DateTime;

    if-eqz v0, :cond_0

    .line 493
    new-instance v0, Lorg/apache/commons/lang/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;-><init>()V

    iget-object v1, p0, Lnet/fortuna/ical4j/model/DateTime;->time:Lnet/fortuna/ical4j/model/Time;

    check-cast p1, Lnet/fortuna/ical4j/model/DateTime;

    iget-object v2, p1, Lnet/fortuna/ical4j/model/DateTime;->time:Lnet/fortuna/ical4j/model/Time;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    move-result-object v0

    .line 494
    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    .line 496
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lnet/fortuna/ical4j/model/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final getTimeZone()Lnet/fortuna/ical4j/model/TimeZone;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateTime;->timezone:Lnet/fortuna/ical4j/model/TimeZone;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 503
    invoke-super {p0}, Lnet/fortuna/ical4j/model/Date;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isUtc()Z
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateTime;->time:Lnet/fortuna/ical4j/model/Time;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Time;->isUtc()Z

    move-result v0

    return v0
.end method

.method public final setTime(J)V
    .locals 1

    .prologue
    .line 404
    invoke-super {p0, p1, p2}, Lnet/fortuna/ical4j/model/Date;->setTime(J)V

    .line 408
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateTime;->time:Lnet/fortuna/ical4j/model/Time;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateTime;->time:Lnet/fortuna/ical4j/model/Time;

    invoke-virtual {v0, p1, p2}, Lnet/fortuna/ical4j/model/Time;->setTime(J)V

    .line 411
    :cond_0
    return-void
.end method

.method public final setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V
    .locals 4

    .prologue
    .line 448
    iput-object p1, p0, Lnet/fortuna/ical4j/model/DateTime;->timezone:Lnet/fortuna/ical4j/model/TimeZone;

    .line 449
    if-eqz p1, :cond_0

    .line 450
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/DateTime;->getFormat()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 454
    :goto_0
    new-instance v0, Lnet/fortuna/ical4j/model/Time;

    iget-object v1, p0, Lnet/fortuna/ical4j/model/DateTime;->time:Lnet/fortuna/ical4j/model/Time;

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/DateTime;->getFormat()Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v2}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/fortuna/ical4j/model/Time;-><init>(Ljava/util/Date;Ljava/util/TimeZone;Z)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/DateTime;->time:Lnet/fortuna/ical4j/model/Time;

    .line 455
    return-void

    .line 452
    :cond_0
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/DateTime;->resetTimeZone()V

    goto :goto_0
.end method

.method public final setUtc(Z)V
    .locals 3

    .prologue
    .line 429
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/DateTime;->timezone:Lnet/fortuna/ical4j/model/TimeZone;

    .line 430
    if-eqz p1, :cond_0

    .line 431
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/DateTime;->getFormat()Ljava/text/DateFormat;

    move-result-object v0

    invoke-static {}, Lnet/fortuna/ical4j/util/TimeZones;->getUtcTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 435
    :goto_0
    new-instance v0, Lnet/fortuna/ical4j/model/Time;

    iget-object v1, p0, Lnet/fortuna/ical4j/model/DateTime;->time:Lnet/fortuna/ical4j/model/Time;

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/DateTime;->getFormat()Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v2}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lnet/fortuna/ical4j/model/Time;-><init>(Ljava/util/Date;Ljava/util/TimeZone;Z)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/DateTime;->time:Lnet/fortuna/ical4j/model/Time;

    .line 436
    return-void

    .line 433
    :cond_0
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/DateTime;->resetTimeZone()V

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 480
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-super {p0}, Lnet/fortuna/ical4j/model/Date;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 481
    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 482
    iget-object v1, p0, Lnet/fortuna/ical4j/model/DateTime;->time:Lnet/fortuna/ical4j/model/Time;

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/Time;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 483
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
