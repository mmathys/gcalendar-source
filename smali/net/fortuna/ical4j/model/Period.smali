.class public Lnet/fortuna/ical4j/model/Period;
.super Lnet/fortuna/ical4j/model/DateRange;
.source "Period.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field private static final serialVersionUID:J = 0x6599bcf36a2a304aL


# instance fields
.field private duration:Lnet/fortuna/ical4j/model/Dur;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-static {p1}, Lnet/fortuna/ical4j/model/Period;->parseStartDate(Ljava/lang/String;)Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lnet/fortuna/ical4j/model/Period;->parseEndDate(Ljava/lang/String;Z)Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/DateRange;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    .line 70
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0}, Lnet/fortuna/ical4j/model/Period;->parseEndDate(Ljava/lang/String;Z)Lnet/fortuna/ical4j/model/DateTime;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/Period;->normalise()V

    .line 77
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 74
    invoke-static {p1}, Lnet/fortuna/ical4j/model/Period;->parseDuration(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Dur;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/Period;->duration:Lnet/fortuna/ical4j/model/Dur;

    goto :goto_0
.end method

.method private normalise()V
    .locals 2

    .prologue
    .line 133
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Period;->getStart()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v0

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/DateTime;->isUtc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Period;->getEnd()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/DateTime;->setUtc(Z)V

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Period;->getEnd()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v0

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Period;->getStart()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v1

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/DateTime;->getTimeZone()Lnet/fortuna/ical4j/model/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/DateTime;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    goto :goto_0
.end method

.method private static parseDuration(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Dur;
    .locals 2

    .prologue
    .line 128
    new-instance v0, Lnet/fortuna/ical4j/model/Dur;

    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/Dur;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static parseEndDate(Ljava/lang/String;Z)Lnet/fortuna/ical4j/model/DateTime;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 111
    .line 113
    :try_start_0
    new-instance v0, Lnet/fortuna/ical4j/model/DateTime;

    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-object v0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    if-eqz p1, :cond_0

    .line 117
    invoke-static {p0}, Lnet/fortuna/ical4j/model/Period;->parseDuration(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Dur;

    move-result-object v1

    .line 118
    new-instance v0, Lnet/fortuna/ical4j/model/DateTime;

    invoke-static {p0}, Lnet/fortuna/ical4j/model/Period;->parseStartDate(Ljava/lang/String;)Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/fortuna/ical4j/model/Dur;->getTime(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Ljava/util/Date;)V

    goto :goto_0

    .line 121
    :cond_0
    throw v0
.end method

.method private static parseStartDate(Ljava/lang/String;)Lnet/fortuna/ical4j/model/DateTime;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 107
    new-instance v0, Lnet/fortuna/ical4j/model/DateTime;

    const/4 v1, 0x0

    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 319
    check-cast p1, Lnet/fortuna/ical4j/model/Period;

    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/Period;->compareTo(Lnet/fortuna/ical4j/model/Period;)I

    move-result v0

    return v0
.end method

.method public final compareTo(Lnet/fortuna/ical4j/model/Period;)I
    .locals 2

    .prologue
    .line 331
    if-nez p1, :cond_0

    .line 332
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "Cannot compare this object to null"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_0
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Period;->getStart()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v0

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Period;->getStart()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/DateTime;->compareTo(Ljava/util/Date;)I

    move-result v0

    .line 335
    if-eqz v0, :cond_2

    .line 346
    :cond_1
    :goto_0
    return v0

    .line 339
    :cond_2
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Period;->duration:Lnet/fortuna/ical4j/model/Dur;

    if-nez v0, :cond_3

    .line 340
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Period;->getEnd()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v0

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Period;->getEnd()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/DateTime;->compareTo(Ljava/util/Date;)I

    move-result v0

    .line 341
    if-nez v0, :cond_1

    .line 346
    :cond_3
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Period;->getDuration()Lnet/fortuna/ical4j/model/Dur;

    move-result-object v0

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Period;->getDuration()Lnet/fortuna/ical4j/model/Dur;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/Dur;->compareTo(Lnet/fortuna/ical4j/model/Dur;)I

    move-result v0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 353
    if-ne p0, p1, :cond_0

    .line 354
    const/4 v0, 0x1

    .line 361
    :goto_0
    return v0

    .line 356
    :cond_0
    instance-of v0, p1, Lnet/fortuna/ical4j/model/Period;

    if-nez v0, :cond_1

    .line 357
    const/4 v0, 0x0

    goto :goto_0

    .line 360
    :cond_1
    check-cast p1, Lnet/fortuna/ical4j/model/Period;

    .line 361
    new-instance v0, Lorg/apache/commons/lang/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Period;->getStart()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v1

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Period;->getStart()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    move-result-object v0

    .line 362
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Period;->getEnd()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v1

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Period;->getEnd()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    goto :goto_0
.end method

.method public final getDuration()Lnet/fortuna/ical4j/model/Dur;
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Period;->duration:Lnet/fortuna/ical4j/model/Dur;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lnet/fortuna/ical4j/model/Dur;

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Period;->getStart()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v1

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Period;->getEnd()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/Dur;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    .line 151
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Period;->duration:Lnet/fortuna/ical4j/model/Dur;

    goto :goto_0
.end method

.method public final getEnd()Lnet/fortuna/ical4j/model/DateTime;
    .locals 1

    .prologue
    .line 161
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Period;->getRangeEnd()Ljava/util/Date;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/DateTime;

    return-object v0
.end method

.method public final getStart()Lnet/fortuna/ical4j/model/DateTime;
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Period;->getRangeStart()Ljava/util/Date;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/DateTime;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 369
    new-instance v0, Lorg/apache/commons/lang/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Period;->getStart()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v1

    iget-object v0, p0, Lnet/fortuna/ical4j/model/Period;->duration:Lnet/fortuna/ical4j/model/Dur;

    if-nez v0, :cond_0

    .line 370
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Period;->getEnd()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    .line 369
    return v0

    .line 370
    :cond_0
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Period;->duration:Lnet/fortuna/ical4j/model/Dur;

    goto :goto_0
.end method

.method public final setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 292
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Period;->getStart()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v0

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/DateTime;->setUtc(Z)V

    .line 293
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Period;->getStart()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/model/DateTime;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    .line 294
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Period;->getEnd()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v0

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/DateTime;->setUtc(Z)V

    .line 295
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Period;->getEnd()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/model/DateTime;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    .line 296
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 302
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 303
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Period;->getStart()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 304
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 305
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Period;->duration:Lnet/fortuna/ical4j/model/Dur;

    if-nez v1, :cond_0

    .line 306
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Period;->getEnd()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 312
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 310
    :cond_0
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Period;->duration:Lnet/fortuna/ical4j/model/Dur;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
