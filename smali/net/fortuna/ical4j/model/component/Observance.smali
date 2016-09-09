.class public abstract Lnet/fortuna/ical4j/model/component/Observance;
.super Lnet/fortuna/ical4j/model/Component;
.source "Observance.java"


# static fields
.field private static final UTC_FORMAT:Ljava/text/DateFormat;

.field private static final serialVersionUID:J = 0x2304ab9d3c2c846aL


# instance fields
.field private initialOnset:Lnet/fortuna/ical4j/model/Date;

.field private onsetLimit:Lnet/fortuna/ical4j/model/Date;

.field private onsets:Ljava/util/Map;

.field private onsetsDates:[Lnet/fortuna/ical4j/model/DateTime;

.field private onsetsMillisec:[J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 99
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/fortuna/ical4j/model/component/Observance;->UTC_FORMAT:Ljava/text/DateFormat;

    .line 103
    sget-object v0, Lnet/fortuna/ical4j/model/component/Observance;->UTC_FORMAT:Ljava/text/DateFormat;

    invoke-static {}, Lnet/fortuna/ical4j/util/TimeZones;->getUtcTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 104
    sget-object v0, Lnet/fortuna/ical4j/model/component/Observance;->UTC_FORMAT:Ljava/text/DateFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setLenient(Z)V

    .line 105
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/model/Component;-><init>(Ljava/lang/String;)V

    .line 92
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/component/Observance;->onsets:Ljava/util/Map;

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/component/Observance;->initialOnset:Lnet/fortuna/ical4j/model/Date;

    .line 116
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V
    .locals 1

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lnet/fortuna/ical4j/model/Component;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 92
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/component/Observance;->onsets:Ljava/util/Map;

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/component/Observance;->initialOnset:Lnet/fortuna/ical4j/model/Date;

    .line 125
    return-void
.end method

.method private applyOffsetFrom(Lnet/fortuna/ical4j/model/DateTime;)Lnet/fortuna/ical4j/model/DateTime;
    .locals 6

    .prologue
    .line 330
    new-instance v0, Lnet/fortuna/ical4j/model/DateTime;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Z)V

    .line 331
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateTime;->getTime()J

    move-result-wide v2

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/Observance;->getOffsetFrom()Lnet/fortuna/ical4j/model/property/TzOffsetFrom;

    move-result-object v1

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/property/TzOffsetFrom;->getOffset()Lnet/fortuna/ical4j/model/UtcOffset;

    move-result-object v1

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/UtcOffset;->getOffset()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lnet/fortuna/ical4j/model/DateTime;->setTime(J)V

    .line 332
    return-object v0
.end method

.method private calculateOnset(Ljava/lang/String;)Lnet/fortuna/ical4j/model/DateTime;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 319
    sget-object v1, Lnet/fortuna/ical4j/model/component/Observance;->UTC_FORMAT:Ljava/text/DateFormat;

    monitor-enter v1

    .line 320
    :try_start_0
    sget-object v0, Lnet/fortuna/ical4j/model/component/Observance;->UTC_FORMAT:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 321
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    new-instance v0, Lnet/fortuna/ical4j/model/DateTime;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Z)V

    .line 325
    invoke-virtual {v0, v2, v3}, Lnet/fortuna/ical4j/model/DateTime;->setTime(J)V

    .line 326
    return-object v0

    .line 321
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private calculateOnset(Lnet/fortuna/ical4j/model/Date;)Lnet/fortuna/ical4j/model/DateTime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 310
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Date;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/component/Observance;->calculateOnset(Ljava/lang/String;)Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v0

    return-object v0
.end method

.method private getCachedOnset(Lnet/fortuna/ical4j/model/Date;)Lnet/fortuna/ical4j/model/DateTime;
    .locals 4

    .prologue
    .line 272
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/Observance;->onsetsMillisec:[J

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Date;->getTime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    .line 273
    if-ltz v0, :cond_0

    .line 274
    iget-object v1, p0, Lnet/fortuna/ical4j/model/component/Observance;->onsetsDates:[Lnet/fortuna/ical4j/model/DateTime;

    aget-object v0, v1, v0

    .line 277
    :goto_0
    return-object v0

    .line 276
    :cond_0
    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 277
    iget-object v1, p0, Lnet/fortuna/ical4j/model/component/Observance;->onsetsDates:[Lnet/fortuna/ical4j/model/DateTime;

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    goto :goto_0
.end method


# virtual methods
.method public final getLatestOnset(Lnet/fortuna/ical4j/model/Date;)Lnet/fortuna/ical4j/model/Date;
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 167
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/Observance;->initialOnset:Lnet/fortuna/ical4j/model/Date;

    if-nez v0, :cond_0

    .line 169
    :try_start_0
    const-string v0, "DTSTART"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/Observance;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/DtStart;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/property/DtStart;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/component/Observance;->calculateOnset(Lnet/fortuna/ical4j/model/Date;)Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/component/Observance;->applyOffsetFrom(Lnet/fortuna/ical4j/model/DateTime;)Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/component/Observance;->initialOnset:Lnet/fortuna/ical4j/model/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :cond_0
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/Observance;->initialOnset:Lnet/fortuna/ical4j/model/Date;

    invoke-virtual {p1, v0}, Lnet/fortuna/ical4j/model/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v1, v2

    .line 263
    :cond_1
    :goto_0
    return-object v1

    .line 170
    :catch_0
    move-exception v0

    .line 171
    const-class v1, Lnet/fortuna/ical4j/model/component/Observance;

    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v1

    .line 172
    const-string v3, "Unexpected error calculating initial onset"

    invoke-interface {v1, v3, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object v1, v2

    .line 174
    goto :goto_0

    .line 183
    :cond_2
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/Observance;->onsetsMillisec:[J

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/Observance;->onsetLimit:Lnet/fortuna/ical4j/model/Date;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/Observance;->onsetLimit:Lnet/fortuna/ical4j/model/Date;

    invoke-virtual {p1, v0}, Lnet/fortuna/ical4j/model/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 184
    :cond_3
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/model/component/Observance;->getCachedOnset(Lnet/fortuna/ical4j/model/Date;)Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v1

    goto :goto_0

    .line 187
    :cond_4
    iget-object v1, p0, Lnet/fortuna/ical4j/model/component/Observance;->initialOnset:Lnet/fortuna/ical4j/model/Date;

    .line 193
    :try_start_1
    const-string v0, "DTSTART"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/Observance;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/DtStart;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/property/DtStart;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/component/Observance;->calculateOnset(Lnet/fortuna/ical4j/model/Date;)Lnet/fortuna/ical4j/model/DateTime;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 201
    new-instance v4, Lnet/fortuna/ical4j/model/DateList;

    invoke-direct {v4}, Lnet/fortuna/ical4j/model/DateList;-><init>()V

    .line 202
    invoke-virtual {v4, v8}, Lnet/fortuna/ical4j/model/DateList;->setUtc(Z)V

    .line 203
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/Observance;->initialOnset:Lnet/fortuna/ical4j/model/Date;

    invoke-virtual {v4, v0}, Lnet/fortuna/ical4j/model/DateList;->add(Lnet/fortuna/ical4j/model/Date;)Z

    .line 206
    const-string v0, "RDATE"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/Observance;->getProperties(Ljava/lang/String;)Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/PropertyList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 208
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/RDate;

    .line 209
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/property/RDate;->getDates()Lnet/fortuna/ical4j/model/DateList;

    move-result-object v0

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/DateList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 211
    :try_start_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/Date;

    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/component/Observance;->calculateOnset(Lnet/fortuna/ical4j/model/Date;)Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/component/Observance;->applyOffsetFrom(Lnet/fortuna/ical4j/model/DateTime;)Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v2

    .line 212
    invoke-virtual {v2, p1}, Lnet/fortuna/ical4j/model/DateTime;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v2, v1}, Lnet/fortuna/ical4j/model/DateTime;->after(Ljava/util/Date;)Z
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_3

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, v2

    .line 219
    :goto_2
    :try_start_3
    invoke-virtual {v4, v2}, Lnet/fortuna/ical4j/model/DateList;->add(Lnet/fortuna/ical4j/model/Date;)Z
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v1, v0

    .line 223
    goto :goto_1

    .line 194
    :catch_1
    move-exception v0

    .line 195
    const-class v1, Lnet/fortuna/ical4j/model/component/Observance;

    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v1

    .line 196
    const-string v3, "Unexpected error calculating initial onset"

    invoke-interface {v1, v3, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object v1, v2

    .line 198
    goto/16 :goto_0

    .line 220
    :catch_2
    move-exception v1

    .line 221
    :goto_3
    const-class v2, Lnet/fortuna/ical4j/model/component/Observance;

    invoke-static {v2}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v2

    .line 222
    const-string v7, "Unexpected error calculating onset"

    invoke-interface {v2, v7, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object v1, v0

    .line 223
    goto :goto_1

    .line 228
    :cond_6
    const-string v0, "RRULE"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/Observance;->getProperties(Ljava/lang/String;)Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/PropertyList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 230
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/RRule;

    .line 232
    invoke-static {p1}, Lnet/fortuna/ical4j/util/Dates;->getCalendarInstance(Lnet/fortuna/ical4j/model/Date;)Ljava/util/Calendar;

    move-result-object v5

    .line 233
    invoke-virtual {v5, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 234
    const/16 v6, 0xa

    invoke-virtual {v5, v8, v6}, Ljava/util/Calendar;->add(II)V

    .line 235
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    sget-object v6, Lnet/fortuna/ical4j/model/parameter/Value;->DATE_TIME:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-static {v5, v6}, Lnet/fortuna/ical4j/util/Dates;->getInstance(Ljava/util/Date;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/Date;

    move-result-object v5

    iput-object v5, p0, Lnet/fortuna/ical4j/model/component/Observance;->onsetLimit:Lnet/fortuna/ical4j/model/Date;

    .line 236
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/property/RRule;->getRecur()Lnet/fortuna/ical4j/model/Recur;

    move-result-object v0

    iget-object v5, p0, Lnet/fortuna/ical4j/model/component/Observance;->onsetLimit:Lnet/fortuna/ical4j/model/Date;

    sget-object v6, Lnet/fortuna/ical4j/model/parameter/Value;->DATE_TIME:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-virtual {v0, v3, v5, v6}, Lnet/fortuna/ical4j/model/Recur;->getDates(Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/DateList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 239
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/DateTime;

    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/component/Observance;->applyOffsetFrom(Lnet/fortuna/ical4j/model/DateTime;)Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v0

    .line 240
    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/model/DateTime;->after(Ljava/util/Date;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/DateTime;->after(Ljava/util/Date;)Z

    move-result v6

    if-eqz v6, :cond_8

    move-object v1, v0

    .line 247
    :cond_8
    invoke-virtual {v4, v0}, Lnet/fortuna/ical4j/model/DateList;->add(Lnet/fortuna/ical4j/model/Date;)Z

    goto :goto_4

    .line 252
    :cond_9
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 254
    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/DateList;->size()I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lnet/fortuna/ical4j/model/component/Observance;->onsetsMillisec:[J

    .line 255
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/Observance;->onsetsMillisec:[J

    array-length v0, v0

    new-array v0, v0, [Lnet/fortuna/ical4j/model/DateTime;

    iput-object v0, p0, Lnet/fortuna/ical4j/model/component/Observance;->onsetsDates:[Lnet/fortuna/ical4j/model/DateTime;

    .line 257
    const/4 v0, 0x0

    move v2, v0

    :goto_5
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/Observance;->onsetsMillisec:[J

    array-length v0, v0

    if-ge v2, v0, :cond_1

    .line 258
    invoke-virtual {v4, v2}, Lnet/fortuna/ical4j/model/DateList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/DateTime;

    .line 259
    iget-object v3, p0, Lnet/fortuna/ical4j/model/component/Observance;->onsetsMillisec:[J

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/DateTime;->getTime()J

    move-result-wide v6

    aput-wide v6, v3, v2

    .line 260
    iget-object v3, p0, Lnet/fortuna/ical4j/model/component/Observance;->onsetsDates:[Lnet/fortuna/ical4j/model/DateTime;

    aput-object v0, v3, v2

    .line 257
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    .line 220
    :catch_3
    move-exception v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    goto/16 :goto_3

    :cond_a
    move-object v0, v1

    goto/16 :goto_2
.end method

.method public final getOffsetFrom()Lnet/fortuna/ical4j/model/property/TzOffsetFrom;
    .locals 1

    .prologue
    .line 294
    const-string v0, "TZOFFSETFROM"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/Observance;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/TzOffsetFrom;

    return-object v0
.end method

.method public final validate(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "TZOFFSETFROM"

    .line 136
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/Observance;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    .line 135
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 141
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "TZOFFSETTO"

    .line 142
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/Observance;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    .line 141
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 147
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "DTSTART"

    .line 148
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/Observance;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    .line 147
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 154
    if-eqz p1, :cond_0

    .line 155
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/Observance;->validateProperties()V

    .line 157
    :cond_0
    return-void
.end method
