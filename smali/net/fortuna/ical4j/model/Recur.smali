.class public Lnet/fortuna/ical4j/model/Recur;
.super Ljava/lang/Object;
.source "Recur.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static maxIncrementCount:I = 0x0

.field private static final serialVersionUID:J = -0x65c4dabb6cbd4da6L


# instance fields
.field private calIncField:I

.field private calendarWeekStartDay:I

.field private count:I

.field private dayList:Lnet/fortuna/ical4j/model/WeekDayList;

.field private experimentalValues:Ljava/util/Map;

.field private frequency:Ljava/lang/String;

.field private hourList:Lnet/fortuna/ical4j/model/NumberList;

.field private interval:I

.field private transient log:Lorg/apache/commons/logging/Log;

.field private minuteList:Lnet/fortuna/ical4j/model/NumberList;

.field private monthDayList:Lnet/fortuna/ical4j/model/NumberList;

.field private monthList:Lnet/fortuna/ical4j/model/NumberList;

.field private secondList:Lnet/fortuna/ical4j/model/NumberList;

.field private setPosList:Lnet/fortuna/ical4j/model/NumberList;

.field private until:Lnet/fortuna/ical4j/model/Date;

.field private weekNoList:Lnet/fortuna/ical4j/model/NumberList;

.field private weekStartDay:Ljava/lang/String;

.field private yearDayList:Lnet/fortuna/ical4j/model/NumberList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 138
    const-string v0, "net.fortuna.ical4j.recur.maxincrementcount"

    invoke-static {v0}, Lnet/fortuna/ical4j/util/Configurator;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 140
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lnet/fortuna/ical4j/model/Recur;->maxIncrementCount:I

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    const/16 v0, 0x3e8

    sput v0, Lnet/fortuna/ical4j/model/Recur;->maxIncrementCount:I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    const-class v0, Lnet/fortuna/ical4j/model/Recur;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lorg/apache/commons/logging/Log;

    .line 152
    iput v1, p0, Lnet/fortuna/ical4j/model/Recur;->count:I

    .line 154
    iput v1, p0, Lnet/fortuna/ical4j/model/Recur;->interval:I

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->experimentalValues:Ljava/util/Map;

    .line 188
    const/4 v0, 0x2

    iput v0, p0, Lnet/fortuna/ical4j/model/Recur;->calendarWeekStartDay:I

    .line 189
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x16e

    const/16 v6, 0x3b

    const/4 v1, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    const-class v0, Lnet/fortuna/ical4j/model/Recur;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lorg/apache/commons/logging/Log;

    .line 152
    iput v1, p0, Lnet/fortuna/ical4j/model/Recur;->count:I

    .line 154
    iput v1, p0, Lnet/fortuna/ical4j/model/Recur;->interval:I

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->experimentalValues:Ljava/util/Map;

    .line 198
    const/4 v0, 0x2

    iput v0, p0, Lnet/fortuna/ical4j/model/Recur;->calendarWeekStartDay:I

    .line 199
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v0, ";="

    invoke-direct {v1, p1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 201
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 202
    const-string v2, "FREQ"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/Recur;->nextToken(Ljava/util/StringTokenizer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->frequency:Ljava/lang/String;

    goto :goto_0

    .line 205
    :cond_0
    const-string v2, "UNTIL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 206
    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/Recur;->nextToken(Ljava/util/StringTokenizer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    if-eqz v0, :cond_1

    const-string v2, "T"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 208
    new-instance v2, Lnet/fortuna/ical4j/model/DateTime;

    invoke-direct {v2, v0}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lnet/fortuna/ical4j/model/Recur;->until:Lnet/fortuna/ical4j/model/Date;

    .line 210
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->until:Lnet/fortuna/ical4j/model/Date;

    check-cast v0, Lnet/fortuna/ical4j/model/DateTime;

    invoke-virtual {v0, v4}, Lnet/fortuna/ical4j/model/DateTime;->setUtc(Z)V

    goto :goto_0

    .line 213
    :cond_1
    new-instance v2, Lnet/fortuna/ical4j/model/Date;

    invoke-direct {v2, v0}, Lnet/fortuna/ical4j/model/Date;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lnet/fortuna/ical4j/model/Recur;->until:Lnet/fortuna/ical4j/model/Date;

    goto :goto_0

    .line 216
    :cond_2
    const-string v2, "COUNT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 217
    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/Recur;->nextToken(Ljava/util/StringTokenizer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/fortuna/ical4j/model/Recur;->count:I

    goto :goto_0

    .line 219
    :cond_3
    const-string v2, "INTERVAL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 220
    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/Recur;->nextToken(Ljava/util/StringTokenizer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/fortuna/ical4j/model/Recur;->interval:I

    goto :goto_0

    .line 222
    :cond_4
    const-string v2, "BYSECOND"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 223
    new-instance v2, Lnet/fortuna/ical4j/model/NumberList;

    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/Recur;->nextToken(Ljava/util/StringTokenizer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v5, v6, v5}, Lnet/fortuna/ical4j/model/NumberList;-><init>(Ljava/lang/String;IIZ)V

    iput-object v2, p0, Lnet/fortuna/ical4j/model/Recur;->secondList:Lnet/fortuna/ical4j/model/NumberList;

    goto :goto_0

    .line 225
    :cond_5
    const-string v2, "BYMINUTE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 226
    new-instance v2, Lnet/fortuna/ical4j/model/NumberList;

    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/Recur;->nextToken(Ljava/util/StringTokenizer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v5, v6, v5}, Lnet/fortuna/ical4j/model/NumberList;-><init>(Ljava/lang/String;IIZ)V

    iput-object v2, p0, Lnet/fortuna/ical4j/model/Recur;->minuteList:Lnet/fortuna/ical4j/model/NumberList;

    goto/16 :goto_0

    .line 228
    :cond_6
    const-string v2, "BYHOUR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 229
    new-instance v2, Lnet/fortuna/ical4j/model/NumberList;

    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/Recur;->nextToken(Ljava/util/StringTokenizer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x17

    invoke-direct {v2, v0, v5, v3, v5}, Lnet/fortuna/ical4j/model/NumberList;-><init>(Ljava/lang/String;IIZ)V

    iput-object v2, p0, Lnet/fortuna/ical4j/model/Recur;->hourList:Lnet/fortuna/ical4j/model/NumberList;

    goto/16 :goto_0

    .line 231
    :cond_7
    const-string v2, "BYDAY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 232
    new-instance v2, Lnet/fortuna/ical4j/model/WeekDayList;

    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/Recur;->nextToken(Ljava/util/StringTokenizer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lnet/fortuna/ical4j/model/WeekDayList;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lnet/fortuna/ical4j/model/Recur;->dayList:Lnet/fortuna/ical4j/model/WeekDayList;

    goto/16 :goto_0

    .line 234
    :cond_8
    const-string v2, "BYMONTHDAY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 235
    new-instance v2, Lnet/fortuna/ical4j/model/NumberList;

    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/Recur;->nextToken(Ljava/util/StringTokenizer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x1f

    invoke-direct {v2, v0, v4, v3, v4}, Lnet/fortuna/ical4j/model/NumberList;-><init>(Ljava/lang/String;IIZ)V

    iput-object v2, p0, Lnet/fortuna/ical4j/model/Recur;->monthDayList:Lnet/fortuna/ical4j/model/NumberList;

    goto/16 :goto_0

    .line 237
    :cond_9
    const-string v2, "BYYEARDAY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 238
    new-instance v2, Lnet/fortuna/ical4j/model/NumberList;

    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/Recur;->nextToken(Ljava/util/StringTokenizer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v4, v7, v4}, Lnet/fortuna/ical4j/model/NumberList;-><init>(Ljava/lang/String;IIZ)V

    iput-object v2, p0, Lnet/fortuna/ical4j/model/Recur;->yearDayList:Lnet/fortuna/ical4j/model/NumberList;

    goto/16 :goto_0

    .line 240
    :cond_a
    const-string v2, "BYWEEKNO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 241
    new-instance v2, Lnet/fortuna/ical4j/model/NumberList;

    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/Recur;->nextToken(Ljava/util/StringTokenizer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x35

    invoke-direct {v2, v0, v4, v3, v4}, Lnet/fortuna/ical4j/model/NumberList;-><init>(Ljava/lang/String;IIZ)V

    iput-object v2, p0, Lnet/fortuna/ical4j/model/Recur;->weekNoList:Lnet/fortuna/ical4j/model/NumberList;

    goto/16 :goto_0

    .line 243
    :cond_b
    const-string v2, "BYMONTH"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 244
    new-instance v2, Lnet/fortuna/ical4j/model/NumberList;

    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/Recur;->nextToken(Ljava/util/StringTokenizer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xc

    invoke-direct {v2, v0, v4, v3, v5}, Lnet/fortuna/ical4j/model/NumberList;-><init>(Ljava/lang/String;IIZ)V

    iput-object v2, p0, Lnet/fortuna/ical4j/model/Recur;->monthList:Lnet/fortuna/ical4j/model/NumberList;

    goto/16 :goto_0

    .line 246
    :cond_c
    const-string v2, "BYSETPOS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 247
    new-instance v2, Lnet/fortuna/ical4j/model/NumberList;

    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/Recur;->nextToken(Ljava/util/StringTokenizer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v4, v7, v4}, Lnet/fortuna/ical4j/model/NumberList;-><init>(Ljava/lang/String;IIZ)V

    iput-object v2, p0, Lnet/fortuna/ical4j/model/Recur;->setPosList:Lnet/fortuna/ical4j/model/NumberList;

    goto/16 :goto_0

    .line 249
    :cond_d
    const-string v2, "WKST"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 250
    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/Recur;->nextToken(Ljava/util/StringTokenizer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->weekStartDay:Ljava/lang/String;

    .line 251
    new-instance v0, Lnet/fortuna/ical4j/model/WeekDay;

    iget-object v2, p0, Lnet/fortuna/ical4j/model/Recur;->weekStartDay:Ljava/lang/String;

    invoke-direct {v0, v2}, Lnet/fortuna/ical4j/model/WeekDay;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnet/fortuna/ical4j/model/WeekDay;->getCalendarDay(Lnet/fortuna/ical4j/model/WeekDay;)I

    move-result v0

    iput v0, p0, Lnet/fortuna/ical4j/model/Recur;->calendarWeekStartDay:I

    goto/16 :goto_0

    .line 254
    :cond_e
    const-string v2, "ical4j.parsing.relaxed"

    invoke-static {v2}, Lnet/fortuna/ical4j/util/CompatibilityHints;->isHintEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 256
    iget-object v2, p0, Lnet/fortuna/ical4j/model/Recur;->experimentalValues:Ljava/util/Map;

    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/Recur;->nextToken(Ljava/util/StringTokenizer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 259
    :cond_f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 260
    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/Recur;->nextToken(Ljava/util/StringTokenizer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1f

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Invalid recurrence rule part: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 264
    :cond_10
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/Recur;->validateFrequency()V

    .line 265
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    const-class v0, Lnet/fortuna/ical4j/model/Recur;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lorg/apache/commons/logging/Log;

    .line 152
    iput v1, p0, Lnet/fortuna/ical4j/model/Recur;->count:I

    .line 154
    iput v1, p0, Lnet/fortuna/ical4j/model/Recur;->interval:I

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->experimentalValues:Ljava/util/Map;

    .line 294
    const/4 v0, 0x2

    iput v0, p0, Lnet/fortuna/ical4j/model/Recur;->calendarWeekStartDay:I

    .line 295
    iput-object p1, p0, Lnet/fortuna/ical4j/model/Recur;->frequency:Ljava/lang/String;

    .line 296
    iput p2, p0, Lnet/fortuna/ical4j/model/Recur;->count:I

    .line 297
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/Recur;->validateFrequency()V

    .line 298
    return-void
.end method

.method private applySetPosRules(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;
    .locals 5

    .prologue
    .line 846
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getSetPosList()Lnet/fortuna/ical4j/model/NumberList;

    move-result-object v0

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/NumberList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 863
    :goto_0
    return-object p1

    .line 850
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 851
    invoke-static {p1}, Lnet/fortuna/ical4j/model/Recur;->getDateListInstance(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object v1

    .line 852
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateList;->size()I

    move-result v2

    .line 853
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getSetPosList()Lnet/fortuna/ical4j/model/NumberList;

    move-result-object v0

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/NumberList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 854
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 855
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 856
    if-lez v0, :cond_2

    if-gt v0, v2, :cond_2

    .line 857
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lnet/fortuna/ical4j/model/DateList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/DateList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 859
    :cond_2
    if-gez v0, :cond_1

    neg-int v4, v2

    if-lt v0, v4, :cond_1

    .line 860
    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lnet/fortuna/ical4j/model/DateList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/DateList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object p1, v1

    .line 863
    goto :goto_0
.end method

.method private getAbsWeekDays(Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/parameter/Value;Lnet/fortuna/ical4j/model/WeekDay;)Ljava/util/List;
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x7

    const/4 v5, 0x1

    .line 1008
    invoke-direct {p0, p1, v5}, Lnet/fortuna/ical4j/model/Recur;->getCalendarInstance(Lnet/fortuna/ical4j/model/Date;Z)Ljava/util/Calendar;

    move-result-object v2

    .line 1009
    new-instance v1, Lnet/fortuna/ical4j/model/DateList;

    invoke-direct {v1, p2}, Lnet/fortuna/ical4j/model/DateList;-><init>(Lnet/fortuna/ical4j/model/parameter/Value;)V

    .line 1010
    instance-of v0, p1, Lnet/fortuna/ical4j/model/DateTime;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 1011
    check-cast v0, Lnet/fortuna/ical4j/model/DateTime;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/DateTime;->isUtc()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1012
    invoke-virtual {v1, v5}, Lnet/fortuna/ical4j/model/DateList;->setUtc(Z)V

    .line 1018
    :cond_0
    :goto_0
    invoke-static {p3}, Lnet/fortuna/ical4j/model/WeekDay;->getCalendarDay(Lnet/fortuna/ical4j/model/WeekDay;)I

    move-result v0

    .line 1019
    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    move-object v0, v1

    .line 1065
    :goto_1
    return-object v0

    .line 1015
    :cond_1
    check-cast p1, Lnet/fortuna/ical4j/model/DateTime;

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateTime;->getTimeZone()Lnet/fortuna/ical4j/model/TimeZone;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/DateList;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    goto :goto_0

    .line 1023
    :cond_2
    const-string v3, "DAILY"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getFrequency()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1024
    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, v0, :cond_3

    .line 1025
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0, p2}, Lnet/fortuna/ical4j/util/Dates;->getInstance(Ljava/util/Date;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/DateList;->add(Lnet/fortuna/ical4j/model/Date;)Z

    .line 1065
    :cond_3
    :goto_2
    invoke-virtual {p3}, Lnet/fortuna/ical4j/model/WeekDay;->getOffset()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/Recur;->getOffsetDates(Lnet/fortuna/ical4j/model/DateList;I)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 1028
    :cond_4
    const-string v3, "WEEKLY"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getFrequency()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getWeekNoList()Lnet/fortuna/ical4j/model/NumberList;

    move-result-object v3

    invoke-virtual {v3}, Lnet/fortuna/ical4j/model/NumberList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1029
    :cond_5
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1031
    invoke-virtual {v2}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v4

    invoke-virtual {v2, v6, v4}, Ljava/util/Calendar;->set(II)V

    .line 1032
    :goto_3
    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eq v4, v0, :cond_6

    .line 1033
    invoke-virtual {v2, v6, v5}, Ljava/util/Calendar;->add(II)V

    goto :goto_3

    .line 1036
    :cond_6
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 1037
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0, p2}, Lnet/fortuna/ical4j/util/Dates;->getInstance(Ljava/util/Date;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/DateList;->add(Lnet/fortuna/ical4j/model/Date;)Z

    goto :goto_2

    .line 1041
    :cond_7
    const-string v3, "MONTHLY"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getFrequency()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getMonthList()Lnet/fortuna/ical4j/model/NumberList;

    move-result-object v3

    invoke-virtual {v3}, Lnet/fortuna/ical4j/model/NumberList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    .line 1042
    :cond_8
    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1044
    invoke-virtual {v2, v7, v5}, Ljava/util/Calendar;->set(II)V

    .line 1045
    :goto_4
    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eq v4, v0, :cond_9

    .line 1046
    invoke-virtual {v2, v7, v5}, Ljava/util/Calendar;->add(II)V

    goto :goto_4

    .line 1048
    :cond_9
    :goto_5
    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 1049
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0, p2}, Lnet/fortuna/ical4j/util/Dates;->getInstance(Ljava/util/Date;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/DateList;->add(Lnet/fortuna/ical4j/model/Date;)Z

    .line 1050
    invoke-virtual {v2, v7, v6}, Ljava/util/Calendar;->add(II)V

    goto :goto_5

    .line 1053
    :cond_a
    const-string v3, "YEARLY"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getFrequency()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1054
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1056
    invoke-virtual {v2, v8, v5}, Ljava/util/Calendar;->set(II)V

    .line 1057
    :goto_6
    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eq v4, v0, :cond_b

    .line 1058
    invoke-virtual {v2, v8, v5}, Ljava/util/Calendar;->add(II)V

    goto :goto_6

    .line 1060
    :cond_b
    :goto_7
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 1061
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0, p2}, Lnet/fortuna/ical4j/util/Dates;->getInstance(Ljava/util/Date;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/DateList;->add(Lnet/fortuna/ical4j/model/Date;)Z

    .line 1062
    invoke-virtual {v2, v8, v6}, Ljava/util/Calendar;->add(II)V

    goto :goto_7
.end method

.method private getCalendarInstance(Lnet/fortuna/ical4j/model/Date;Z)Ljava/util/Calendar;
    .locals 2

    .prologue
    .line 1230
    invoke-static {p1}, Lnet/fortuna/ical4j/util/Dates;->getCalendarInstance(Lnet/fortuna/ical4j/model/Date;)Ljava/util/Calendar;

    move-result-object v0

    .line 1232
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    .line 1233
    iget v1, p0, Lnet/fortuna/ical4j/model/Recur;->calendarWeekStartDay:I

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 1234
    invoke-virtual {v0, p2}, Ljava/util/Calendar;->setLenient(Z)V

    .line 1235
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1237
    return-object v0
.end method

.method private getCandidates(Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/DateList;
    .locals 5

    .prologue
    .line 781
    new-instance v1, Lnet/fortuna/ical4j/model/DateList;

    invoke-direct {v1, p2}, Lnet/fortuna/ical4j/model/DateList;-><init>(Lnet/fortuna/ical4j/model/parameter/Value;)V

    .line 782
    instance-of v0, p1, Lnet/fortuna/ical4j/model/DateTime;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 783
    check-cast v0, Lnet/fortuna/ical4j/model/DateTime;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/DateTime;->isUtc()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 784
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/DateList;->setUtc(Z)V

    .line 790
    :cond_0
    :goto_0
    invoke-virtual {v1, p1}, Lnet/fortuna/ical4j/model/DateList;->add(Lnet/fortuna/ical4j/model/Date;)Z

    .line 791
    invoke-direct {p0, v1}, Lnet/fortuna/ical4j/model/Recur;->getMonthVariants(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object v0

    .line 793
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 794
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lorg/apache/commons/logging/Log;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x20

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Dates after BYMONTH processing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 796
    :cond_1
    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/Recur;->getWeekNoVariants(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object v0

    .line 798
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 799
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lorg/apache/commons/logging/Log;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x21

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Dates after BYWEEKNO processing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 801
    :cond_2
    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/Recur;->getYearDayVariants(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object v0

    .line 803
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 804
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lorg/apache/commons/logging/Log;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x22

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Dates after BYYEARDAY processing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 806
    :cond_3
    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/Recur;->getMonthDayVariants(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object v0

    .line 808
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 809
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lorg/apache/commons/logging/Log;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x23

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Dates after BYMONTHDAY processing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 811
    :cond_4
    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/Recur;->getDayVariants(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object v0

    .line 813
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 814
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lorg/apache/commons/logging/Log;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1e

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Dates after BYDAY processing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 816
    :cond_5
    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/Recur;->getHourVariants(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object v0

    .line 818
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 819
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lorg/apache/commons/logging/Log;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1f

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Dates after BYHOUR processing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 821
    :cond_6
    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/Recur;->getMinuteVariants(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object v0

    .line 823
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 824
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lorg/apache/commons/logging/Log;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x21

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Dates after BYMINUTE processing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 826
    :cond_7
    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/Recur;->getSecondVariants(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object v0

    .line 828
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 829
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lorg/apache/commons/logging/Log;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x21

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Dates after BYSECOND processing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 831
    :cond_8
    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/Recur;->applySetPosRules(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object v0

    .line 833
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 834
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lorg/apache/commons/logging/Log;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1f

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Dates after SETPOS processing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 836
    :cond_9
    return-object v0

    :cond_a
    move-object v0, p1

    .line 787
    check-cast v0, Lnet/fortuna/ical4j/model/DateTime;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/DateTime;->getTimeZone()Lnet/fortuna/ical4j/model/TimeZone;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/DateList;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    goto/16 :goto_0
.end method

.method private static getDateListInstance(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;
    .locals 2

    .prologue
    .line 1257
    new-instance v0, Lnet/fortuna/ical4j/model/DateList;

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/DateList;->getType()Lnet/fortuna/ical4j/model/parameter/Value;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/DateList;-><init>(Lnet/fortuna/ical4j/model/parameter/Value;)V

    .line 1258
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/DateList;->isUtc()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1259
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/DateList;->setUtc(Z)V

    .line 1263
    :goto_0
    return-object v0

    .line 1261
    :cond_0
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/DateList;->getTimeZone()Lnet/fortuna/ical4j/model/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/DateList;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    goto :goto_0
.end method

.method private getDayVariants(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;
    .locals 6

    .prologue
    .line 976
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getDayList()Lnet/fortuna/ical4j/model/WeekDayList;

    move-result-object v0

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/WeekDayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 997
    :goto_0
    return-object p1

    .line 979
    :cond_0
    invoke-static {p1}, Lnet/fortuna/ical4j/model/Recur;->getDateListInstance(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object v2

    .line 980
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 981
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/Date;

    .line 982
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getDayList()Lnet/fortuna/ical4j/model/WeekDayList;

    move-result-object v1

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/WeekDayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 983
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/model/WeekDay;

    .line 986
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getYearDayList()Lnet/fortuna/ical4j/model/NumberList;

    move-result-object v5

    invoke-virtual {v5}, Lnet/fortuna/ical4j/model/NumberList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getMonthDayList()Lnet/fortuna/ical4j/model/NumberList;

    move-result-object v5

    invoke-virtual {v5}, Lnet/fortuna/ical4j/model/NumberList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 987
    :cond_3
    const/4 v5, 0x1

    invoke-direct {p0, v0, v5}, Lnet/fortuna/ical4j/model/Recur;->getCalendarInstance(Lnet/fortuna/ical4j/model/Date;Z)Ljava/util/Calendar;

    move-result-object v5

    .line 988
    invoke-static {v5}, Lnet/fortuna/ical4j/model/WeekDay;->getWeekDay(Ljava/util/Calendar;)Lnet/fortuna/ical4j/model/WeekDay;

    move-result-object v5

    invoke-virtual {v1, v5}, Lnet/fortuna/ical4j/model/WeekDay;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 989
    invoke-virtual {v2, v0}, Lnet/fortuna/ical4j/model/DateList;->add(Lnet/fortuna/ical4j/model/Date;)Z

    goto :goto_1

    .line 993
    :cond_4
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateList;->getType()Lnet/fortuna/ical4j/model/parameter/Value;

    move-result-object v5

    invoke-direct {p0, v0, v5, v1}, Lnet/fortuna/ical4j/model/Recur;->getAbsWeekDays(Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/parameter/Value;Lnet/fortuna/ical4j/model/WeekDay;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Lnet/fortuna/ical4j/model/DateList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_5
    move-object p1, v2

    .line 997
    goto :goto_0
.end method

.method private getHourVariants(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;
    .locals 6

    .prologue
    .line 1098
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getHourList()Lnet/fortuna/ical4j/model/NumberList;

    move-result-object v0

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/NumberList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1111
    :goto_0
    return-object p1

    .line 1101
    :cond_0
    invoke-static {p1}, Lnet/fortuna/ical4j/model/Recur;->getDateListInstance(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object v1

    .line 1102
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1103
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/Date;

    .line 1104
    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lnet/fortuna/ical4j/model/Recur;->getCalendarInstance(Lnet/fortuna/ical4j/model/Date;Z)Ljava/util/Calendar;

    move-result-object v3

    .line 1105
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getHourList()Lnet/fortuna/ical4j/model/NumberList;

    move-result-object v0

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/NumberList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1106
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1107
    const/16 v5, 0xb

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 1108
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/DateList;->getType()Lnet/fortuna/ical4j/model/parameter/Value;

    move-result-object v5

    invoke-static {v0, v5}, Lnet/fortuna/ical4j/util/Dates;->getInstance(Ljava/util/Date;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/DateList;->add(Lnet/fortuna/ical4j/model/Date;)Z

    goto :goto_1

    :cond_2
    move-object p1, v1

    .line 1111
    goto :goto_0
.end method

.method private getMinuteVariants(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;
    .locals 6

    .prologue
    .line 1121
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getMinuteList()Lnet/fortuna/ical4j/model/NumberList;

    move-result-object v0

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/NumberList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1134
    :goto_0
    return-object p1

    .line 1124
    :cond_0
    invoke-static {p1}, Lnet/fortuna/ical4j/model/Recur;->getDateListInstance(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object v1

    .line 1125
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1126
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/Date;

    .line 1127
    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lnet/fortuna/ical4j/model/Recur;->getCalendarInstance(Lnet/fortuna/ical4j/model/Date;Z)Ljava/util/Calendar;

    move-result-object v3

    .line 1128
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getMinuteList()Lnet/fortuna/ical4j/model/NumberList;

    move-result-object v0

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/NumberList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1129
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1130
    const/16 v5, 0xc

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 1131
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/DateList;->getType()Lnet/fortuna/ical4j/model/parameter/Value;

    move-result-object v5

    invoke-static {v0, v5}, Lnet/fortuna/ical4j/util/Dates;->getInstance(Ljava/util/Date;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/DateList;->add(Lnet/fortuna/ical4j/model/Date;)Z

    goto :goto_1

    :cond_2
    move-object p1, v1

    .line 1134
    goto :goto_0
.end method

.method private getMonthDayVariants(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;
    .locals 8

    .prologue
    .line 945
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getMonthDayList()Lnet/fortuna/ical4j/model/NumberList;

    move-result-object v0

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/NumberList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 966
    :goto_0
    return-object p1

    .line 948
    :cond_0
    invoke-static {p1}, Lnet/fortuna/ical4j/model/Recur;->getDateListInstance(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object v1

    .line 949
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 950
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/Date;

    .line 951
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lnet/fortuna/ical4j/model/Recur;->getCalendarInstance(Lnet/fortuna/ical4j/model/Date;Z)Ljava/util/Calendar;

    move-result-object v3

    .line 952
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getMonthDayList()Lnet/fortuna/ical4j/model/NumberList;

    move-result-object v0

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/NumberList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 953
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 955
    const/4 v5, 0x5

    :try_start_0
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v6, v7}, Lnet/fortuna/ical4j/util/Dates;->getAbsMonthDay(Ljava/util/Date;I)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 956
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/DateList;->getType()Lnet/fortuna/ical4j/model/parameter/Value;

    move-result-object v6

    invoke-static {v5, v6}, Lnet/fortuna/ical4j/util/Dates;->getInstance(Ljava/util/Date;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/Date;

    move-result-object v5

    invoke-virtual {v1, v5}, Lnet/fortuna/ical4j/model/DateList;->add(Lnet/fortuna/ical4j/model/Date;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 958
    :catch_0
    move-exception v5

    .line 959
    iget-object v5, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 960
    iget-object v5, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lorg/apache/commons/logging/Log;

    .line 961
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 960
    invoke-static {v6, v0}, Lnet/fortuna/ical4j/util/Dates;->getAbsMonthDay(Ljava/util/Date;I)I

    move-result v0

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x21

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Invalid day of month: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    move-object p1, v1

    .line 966
    goto :goto_0
.end method

.method private getMonthVariants(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 873
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getMonthList()Lnet/fortuna/ical4j/model/NumberList;

    move-result-object v0

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/NumberList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 889
    :goto_0
    return-object p1

    .line 876
    :cond_0
    invoke-static {p1}, Lnet/fortuna/ical4j/model/Recur;->getDateListInstance(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object v1

    .line 877
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 878
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/Date;

    .line 879
    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lnet/fortuna/ical4j/model/Recur;->getCalendarInstance(Lnet/fortuna/ical4j/model/Date;Z)Ljava/util/Calendar;

    move-result-object v3

    .line 881
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getMonthList()Lnet/fortuna/ical4j/model/NumberList;

    move-result-object v0

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/NumberList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 882
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 885
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {v3, v6, v0}, Ljava/util/Calendar;->roll(II)V

    .line 886
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/DateList;->getType()Lnet/fortuna/ical4j/model/parameter/Value;

    move-result-object v5

    invoke-static {v0, v5}, Lnet/fortuna/ical4j/util/Dates;->getInstance(Ljava/util/Date;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/DateList;->add(Lnet/fortuna/ical4j/model/Date;)Z

    goto :goto_1

    :cond_2
    move-object p1, v1

    .line 889
    goto :goto_0
.end method

.method private getOffsetDates(Lnet/fortuna/ical4j/model/DateList;I)Ljava/util/List;
    .locals 3

    .prologue
    .line 1077
    if-nez p2, :cond_0

    .line 1088
    :goto_0
    return-object p1

    .line 1080
    :cond_0
    invoke-static {p1}, Lnet/fortuna/ical4j/model/Recur;->getDateListInstance(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object v0

    .line 1081
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateList;->size()I

    move-result v1

    .line 1082
    if-gez p2, :cond_2

    neg-int v2, v1

    if-lt p2, v2, :cond_2

    .line 1083
    add-int/2addr v1, p2

    invoke-virtual {p1, v1}, Lnet/fortuna/ical4j/model/DateList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    move-object p1, v0

    .line 1088
    goto :goto_0

    .line 1085
    :cond_2
    if-lez p2, :cond_1

    if-gt p2, v1, :cond_1

    .line 1086
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1, v1}, Lnet/fortuna/ical4j/model/DateList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private getSecondVariants(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;
    .locals 6

    .prologue
    .line 1144
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getSecondList()Lnet/fortuna/ical4j/model/NumberList;

    move-result-object v0

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/NumberList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1157
    :goto_0
    return-object p1

    .line 1147
    :cond_0
    invoke-static {p1}, Lnet/fortuna/ical4j/model/Recur;->getDateListInstance(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object v1

    .line 1148
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1149
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/Date;

    .line 1150
    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lnet/fortuna/ical4j/model/Recur;->getCalendarInstance(Lnet/fortuna/ical4j/model/Date;Z)Ljava/util/Calendar;

    move-result-object v3

    .line 1151
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getSecondList()Lnet/fortuna/ical4j/model/NumberList;

    move-result-object v0

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/NumberList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1152
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1153
    const/16 v5, 0xd

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 1154
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/DateList;->getType()Lnet/fortuna/ical4j/model/parameter/Value;

    move-result-object v5

    invoke-static {v0, v5}, Lnet/fortuna/ical4j/util/Dates;->getInstance(Ljava/util/Date;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/DateList;->add(Lnet/fortuna/ical4j/model/Date;)Z

    goto :goto_1

    :cond_2
    move-object p1, v1

    .line 1157
    goto :goto_0
.end method

.method private getWeekNoVariants(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;
    .locals 7

    .prologue
    .line 899
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getWeekNoList()Lnet/fortuna/ical4j/model/NumberList;

    move-result-object v0

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/NumberList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 912
    :goto_0
    return-object p1

    .line 902
    :cond_0
    invoke-static {p1}, Lnet/fortuna/ical4j/model/Recur;->getDateListInstance(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object v1

    .line 903
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 904
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/Date;

    .line 905
    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lnet/fortuna/ical4j/model/Recur;->getCalendarInstance(Lnet/fortuna/ical4j/model/Date;Z)Ljava/util/Calendar;

    move-result-object v3

    .line 906
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getWeekNoList()Lnet/fortuna/ical4j/model/NumberList;

    move-result-object v0

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/NumberList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 907
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 908
    const/4 v5, 0x3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v6, v0}, Lnet/fortuna/ical4j/util/Dates;->getAbsWeekNo(Ljava/util/Date;I)I

    move-result v0

    invoke-virtual {v3, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 909
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/DateList;->getType()Lnet/fortuna/ical4j/model/parameter/Value;

    move-result-object v5

    invoke-static {v0, v5}, Lnet/fortuna/ical4j/util/Dates;->getInstance(Ljava/util/Date;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/DateList;->add(Lnet/fortuna/ical4j/model/Date;)Z

    goto :goto_1

    :cond_2
    move-object p1, v1

    .line 912
    goto :goto_0
.end method

.method private getYearDayVariants(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;
    .locals 7

    .prologue
    .line 922
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getYearDayList()Lnet/fortuna/ical4j/model/NumberList;

    move-result-object v0

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/NumberList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 935
    :goto_0
    return-object p1

    .line 925
    :cond_0
    invoke-static {p1}, Lnet/fortuna/ical4j/model/Recur;->getDateListInstance(Lnet/fortuna/ical4j/model/DateList;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object v1

    .line 926
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 927
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/Date;

    .line 928
    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lnet/fortuna/ical4j/model/Recur;->getCalendarInstance(Lnet/fortuna/ical4j/model/Date;Z)Ljava/util/Calendar;

    move-result-object v3

    .line 929
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getYearDayList()Lnet/fortuna/ical4j/model/NumberList;

    move-result-object v0

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/NumberList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 930
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 931
    const/4 v5, 0x6

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v6, v0}, Lnet/fortuna/ical4j/util/Dates;->getAbsYearDay(Ljava/util/Date;I)I

    move-result v0

    invoke-virtual {v3, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 932
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/DateList;->getType()Lnet/fortuna/ical4j/model/parameter/Value;

    move-result-object v5

    invoke-static {v0, v5}, Lnet/fortuna/ical4j/util/Dates;->getInstance(Ljava/util/Date;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/DateList;->add(Lnet/fortuna/ical4j/model/Date;)Z

    goto :goto_1

    :cond_2
    move-object p1, v1

    .line 935
    goto :goto_0
.end method

.method private increment(Ljava/util/Calendar;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 770
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getInterval()I

    move-result v1

    if-lt v1, v0, :cond_0

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getInterval()I

    move-result v0

    .line 771
    :cond_0
    iget v1, p0, Lnet/fortuna/ical4j/model/Recur;->calIncField:I

    invoke-virtual {p1, v1, v0}, Ljava/util/Calendar;->add(II)V

    .line 772
    return-void
.end method

.method private nextToken(Ljava/util/StringTokenizer;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 269
    :try_start_0
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 271
    :catch_0
    move-exception v0

    .line 272
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Missing expected token, last token: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1246
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1247
    const-class v0, Lnet/fortuna/ical4j/model/Recur;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->log:Lorg/apache/commons/logging/Log;

    .line 1248
    return-void
.end method

.method private validateFrequency()V
    .locals 4

    .prologue
    .line 1161
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->frequency:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A recurrence rule MUST contain a FREQ rule part."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1165
    :cond_0
    const-string v0, "SECONDLY"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getFrequency()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1166
    const/16 v0, 0xd

    iput v0, p0, Lnet/fortuna/ical4j/model/Recur;->calIncField:I

    .line 1190
    :goto_0
    return-void

    .line 1168
    :cond_1
    const-string v0, "MINUTELY"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getFrequency()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1169
    const/16 v0, 0xc

    iput v0, p0, Lnet/fortuna/ical4j/model/Recur;->calIncField:I

    goto :goto_0

    .line 1171
    :cond_2
    const-string v0, "HOURLY"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getFrequency()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1172
    const/16 v0, 0xb

    iput v0, p0, Lnet/fortuna/ical4j/model/Recur;->calIncField:I

    goto :goto_0

    .line 1174
    :cond_3
    const-string v0, "DAILY"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getFrequency()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1175
    const/4 v0, 0x6

    iput v0, p0, Lnet/fortuna/ical4j/model/Recur;->calIncField:I

    goto :goto_0

    .line 1177
    :cond_4
    const-string v0, "WEEKLY"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getFrequency()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1178
    const/4 v0, 0x3

    iput v0, p0, Lnet/fortuna/ical4j/model/Recur;->calIncField:I

    goto :goto_0

    .line 1180
    :cond_5
    const-string v0, "MONTHLY"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getFrequency()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1181
    const/4 v0, 0x2

    iput v0, p0, Lnet/fortuna/ical4j/model/Recur;->calIncField:I

    goto :goto_0

    .line 1183
    :cond_6
    const-string v0, "YEARLY"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getFrequency()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1184
    const/4 v0, 0x1

    iput v0, p0, Lnet/fortuna/ical4j/model/Recur;->calIncField:I

    goto :goto_0

    .line 1187
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->frequency:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2c

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Invalid FREQ rule part \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' in recurrence rule"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 394
    iget v0, p0, Lnet/fortuna/ical4j/model/Recur;->count:I

    return v0
.end method

.method public final getDates(Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/parameter/Value;I)Lnet/fortuna/ical4j/model/DateList;
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    .line 593
    new-instance v6, Lnet/fortuna/ical4j/model/DateList;

    invoke-direct {v6, p4}, Lnet/fortuna/ical4j/model/DateList;-><init>(Lnet/fortuna/ical4j/model/parameter/Value;)V

    .line 594
    instance-of v0, p1, Lnet/fortuna/ical4j/model/DateTime;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 595
    check-cast v0, Lnet/fortuna/ical4j/model/DateTime;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/DateTime;->isUtc()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 596
    invoke-virtual {v6, v9}, Lnet/fortuna/ical4j/model/DateList;->setUtc(Z)V

    .line 602
    :cond_0
    :goto_0
    invoke-direct {p0, p1, v9}, Lnet/fortuna/ical4j/model/Recur;->getCalendarInstance(Lnet/fortuna/ical4j/model/Date;Z)Ljava/util/Calendar;

    move-result-object v7

    .line 606
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getCount()I

    move-result v0

    if-ge v0, v9, :cond_2

    .line 607
    invoke-virtual {v7}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 608
    :goto_1
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 609
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 610
    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/Recur;->increment(Ljava/util/Calendar;)V

    goto :goto_1

    :cond_1
    move-object v0, p1

    .line 599
    check-cast v0, Lnet/fortuna/ical4j/model/DateTime;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/DateTime;->getTimeZone()Lnet/fortuna/ical4j/model/TimeZone;

    move-result-object v0

    invoke-virtual {v6, v0}, Lnet/fortuna/ical4j/model/DateList;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    goto :goto_0

    .line 616
    :cond_2
    const/4 v2, 0x0

    move v5, v4

    move v3, v4

    .line 617
    :goto_2
    if-ltz p5, :cond_3

    invoke-virtual {v6}, Lnet/fortuna/ical4j/model/DateList;->size()I

    move-result v0

    if-ge v0, p5, :cond_4

    .line 618
    :cond_3
    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0, p4}, Lnet/fortuna/ical4j/util/Dates;->getInstance(Ljava/util/Date;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/Date;

    move-result-object v1

    .line 620
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getUntil()Lnet/fortuna/ical4j/model/Date;

    move-result-object v0

    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    .line 621
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getUntil()Lnet/fortuna/ical4j/model/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Lnet/fortuna/ical4j/model/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 677
    :cond_4
    :goto_3
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 678
    return-object v6

    .line 625
    :cond_5
    if-eqz p3, :cond_6

    if-eqz v2, :cond_6

    .line 626
    invoke-virtual {v2, p3}, Lnet/fortuna/ical4j/model/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 630
    :cond_6
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getCount()I

    move-result v0

    if-lt v0, v9, :cond_7

    .line 631
    invoke-virtual {v6}, Lnet/fortuna/ical4j/model/DateList;->size()I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getCount()I

    move-result v8

    if-ge v0, v8, :cond_4

    .line 637
    :cond_7
    instance-of v0, v1, Lnet/fortuna/ical4j/model/DateTime;

    if-eqz v0, :cond_8

    .line 638
    invoke-virtual {v6}, Lnet/fortuna/ical4j/model/DateList;->isUtc()Z

    move-result v0

    if-eqz v0, :cond_b

    move-object v0, v1

    .line 639
    check-cast v0, Lnet/fortuna/ical4j/model/DateTime;

    invoke-virtual {v0, v9}, Lnet/fortuna/ical4j/model/DateTime;->setUtc(Z)V

    .line 646
    :cond_8
    :goto_4
    invoke-direct {p0, v1, p4}, Lnet/fortuna/ical4j/model/Recur;->getCandidates(Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object v0

    .line 647
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/DateList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    .line 650
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 651
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/DateList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v0, v2

    move v1, v3

    :cond_9
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 652
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/Date;

    .line 654
    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/model/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 656
    invoke-virtual {v0, p2}, Lnet/fortuna/ical4j/model/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 657
    invoke-virtual {v0, p3}, Lnet/fortuna/ical4j/model/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 658
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_b
    move-object v0, v1

    .line 642
    check-cast v0, Lnet/fortuna/ical4j/model/DateTime;

    invoke-virtual {v6}, Lnet/fortuna/ical4j/model/DateList;->getTimeZone()Lnet/fortuna/ical4j/model/TimeZone;

    move-result-object v8

    invoke-virtual {v0, v8}, Lnet/fortuna/ical4j/model/DateTime;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    goto :goto_4

    .line 659
    :cond_c
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getCount()I

    move-result v2

    if-lt v2, v9, :cond_f

    .line 660
    invoke-virtual {v6}, Lnet/fortuna/ical4j/model/DateList;->size()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getCount()I

    move-result v3

    if-lt v2, v3, :cond_f

    :cond_d
    move-object v2, v0

    move v3, v1

    move v0, v4

    .line 674
    :cond_e
    invoke-direct {p0, v7}, Lnet/fortuna/ical4j/model/Recur;->increment(Ljava/util/Calendar;)V

    move v5, v0

    .line 675
    goto/16 :goto_2

    .line 662
    :cond_f
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getUntil()Lnet/fortuna/ical4j/model/Date;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 663
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getUntil()Lnet/fortuna/ical4j/model/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/fortuna/ical4j/model/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 664
    :cond_10
    invoke-virtual {v6, v0}, Lnet/fortuna/ical4j/model/DateList;->add(Lnet/fortuna/ical4j/model/Date;)Z

    goto :goto_5

    .line 669
    :cond_11
    add-int/lit8 v0, v5, 0x1

    .line 670
    sget v1, Lnet/fortuna/ical4j/model/Recur;->maxIncrementCount:I

    if-lez v1, :cond_e

    sget v1, Lnet/fortuna/ical4j/model/Recur;->maxIncrementCount:I

    if-le v0, v1, :cond_e

    goto/16 :goto_3
.end method

.method public final getDates(Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/DateList;
    .locals 6

    .prologue
    .line 543
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lnet/fortuna/ical4j/model/Recur;->getDates(Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/parameter/Value;I)Lnet/fortuna/ical4j/model/DateList;

    move-result-object v0

    return-object v0
.end method

.method public final getDayList()Lnet/fortuna/ical4j/model/WeekDayList;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->dayList:Lnet/fortuna/ical4j/model/WeekDayList;

    if-nez v0, :cond_0

    .line 305
    new-instance v0, Lnet/fortuna/ical4j/model/WeekDayList;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/WeekDayList;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->dayList:Lnet/fortuna/ical4j/model/WeekDayList;

    .line 307
    :cond_0
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->dayList:Lnet/fortuna/ical4j/model/WeekDayList;

    return-object v0
.end method

.method public final getFrequency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->frequency:Ljava/lang/String;

    return-object v0
.end method

.method public final getHourList()Lnet/fortuna/ical4j/model/NumberList;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 314
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->hourList:Lnet/fortuna/ical4j/model/NumberList;

    if-nez v0, :cond_0

    .line 315
    new-instance v0, Lnet/fortuna/ical4j/model/NumberList;

    const/16 v1, 0x17

    invoke-direct {v0, v2, v1, v2}, Lnet/fortuna/ical4j/model/NumberList;-><init>(IIZ)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->hourList:Lnet/fortuna/ical4j/model/NumberList;

    .line 317
    :cond_0
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->hourList:Lnet/fortuna/ical4j/model/NumberList;

    return-object v0
.end method

.method public final getInterval()I
    .locals 1

    .prologue
    .line 415
    iget v0, p0, Lnet/fortuna/ical4j/model/Recur;->interval:I

    return v0
.end method

.method public final getMinuteList()Lnet/fortuna/ical4j/model/NumberList;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 324
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->minuteList:Lnet/fortuna/ical4j/model/NumberList;

    if-nez v0, :cond_0

    .line 325
    new-instance v0, Lnet/fortuna/ical4j/model/NumberList;

    const/16 v1, 0x3b

    invoke-direct {v0, v2, v1, v2}, Lnet/fortuna/ical4j/model/NumberList;-><init>(IIZ)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->minuteList:Lnet/fortuna/ical4j/model/NumberList;

    .line 327
    :cond_0
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->minuteList:Lnet/fortuna/ical4j/model/NumberList;

    return-object v0
.end method

.method public final getMonthDayList()Lnet/fortuna/ical4j/model/NumberList;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 334
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->monthDayList:Lnet/fortuna/ical4j/model/NumberList;

    if-nez v0, :cond_0

    .line 335
    new-instance v0, Lnet/fortuna/ical4j/model/NumberList;

    const/16 v1, 0x1f

    invoke-direct {v0, v2, v1, v2}, Lnet/fortuna/ical4j/model/NumberList;-><init>(IIZ)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->monthDayList:Lnet/fortuna/ical4j/model/NumberList;

    .line 337
    :cond_0
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->monthDayList:Lnet/fortuna/ical4j/model/NumberList;

    return-object v0
.end method

.method public final getMonthList()Lnet/fortuna/ical4j/model/NumberList;
    .locals 4

    .prologue
    .line 344
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->monthList:Lnet/fortuna/ical4j/model/NumberList;

    if-nez v0, :cond_0

    .line 345
    new-instance v0, Lnet/fortuna/ical4j/model/NumberList;

    const/4 v1, 0x1

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/fortuna/ical4j/model/NumberList;-><init>(IIZ)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->monthList:Lnet/fortuna/ical4j/model/NumberList;

    .line 347
    :cond_0
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->monthList:Lnet/fortuna/ical4j/model/NumberList;

    return-object v0
.end method

.method public final getSecondList()Lnet/fortuna/ical4j/model/NumberList;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 354
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->secondList:Lnet/fortuna/ical4j/model/NumberList;

    if-nez v0, :cond_0

    .line 355
    new-instance v0, Lnet/fortuna/ical4j/model/NumberList;

    const/16 v1, 0x3b

    invoke-direct {v0, v2, v1, v2}, Lnet/fortuna/ical4j/model/NumberList;-><init>(IIZ)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->secondList:Lnet/fortuna/ical4j/model/NumberList;

    .line 357
    :cond_0
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->secondList:Lnet/fortuna/ical4j/model/NumberList;

    return-object v0
.end method

.method public final getSetPosList()Lnet/fortuna/ical4j/model/NumberList;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 364
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->setPosList:Lnet/fortuna/ical4j/model/NumberList;

    if-nez v0, :cond_0

    .line 365
    new-instance v0, Lnet/fortuna/ical4j/model/NumberList;

    const/16 v1, 0x16e

    invoke-direct {v0, v2, v1, v2}, Lnet/fortuna/ical4j/model/NumberList;-><init>(IIZ)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->setPosList:Lnet/fortuna/ical4j/model/NumberList;

    .line 367
    :cond_0
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->setPosList:Lnet/fortuna/ical4j/model/NumberList;

    return-object v0
.end method

.method public final getUntil()Lnet/fortuna/ical4j/model/Date;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->until:Lnet/fortuna/ical4j/model/Date;

    return-object v0
.end method

.method public final getWeekNoList()Lnet/fortuna/ical4j/model/NumberList;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 374
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->weekNoList:Lnet/fortuna/ical4j/model/NumberList;

    if-nez v0, :cond_0

    .line 375
    new-instance v0, Lnet/fortuna/ical4j/model/NumberList;

    const/16 v1, 0x35

    invoke-direct {v0, v2, v1, v2}, Lnet/fortuna/ical4j/model/NumberList;-><init>(IIZ)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->weekNoList:Lnet/fortuna/ical4j/model/NumberList;

    .line 377
    :cond_0
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->weekNoList:Lnet/fortuna/ical4j/model/NumberList;

    return-object v0
.end method

.method public final getYearDayList()Lnet/fortuna/ical4j/model/NumberList;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 384
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->yearDayList:Lnet/fortuna/ical4j/model/NumberList;

    if-nez v0, :cond_0

    .line 385
    new-instance v0, Lnet/fortuna/ical4j/model/NumberList;

    const/16 v1, 0x16e

    invoke-direct {v0, v2, v1, v2}, Lnet/fortuna/ical4j/model/NumberList;-><init>(IIZ)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->yearDayList:Lnet/fortuna/ical4j/model/NumberList;

    .line 387
    :cond_0
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Recur;->yearDayList:Lnet/fortuna/ical4j/model/NumberList;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x3b

    const/16 v2, 0x3d

    .line 446
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 447
    const-string v1, "FREQ"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 448
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 449
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->frequency:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 450
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->weekStartDay:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 451
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 452
    const-string v1, "WKST"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 453
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 454
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->weekStartDay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 456
    :cond_0
    iget v1, p0, Lnet/fortuna/ical4j/model/Recur;->interval:I

    if-lt v1, v4, :cond_1

    .line 457
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 458
    const-string v1, "INTERVAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 459
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 460
    iget v1, p0, Lnet/fortuna/ical4j/model/Recur;->interval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 462
    :cond_1
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->until:Lnet/fortuna/ical4j/model/Date;

    if-eqz v1, :cond_2

    .line 463
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 464
    const-string v1, "UNTIL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 465
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 467
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->until:Lnet/fortuna/ical4j/model/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 469
    :cond_2
    iget v1, p0, Lnet/fortuna/ical4j/model/Recur;->count:I

    if-lt v1, v4, :cond_3

    .line 470
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 471
    const-string v1, "COUNT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 472
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 473
    iget v1, p0, Lnet/fortuna/ical4j/model/Recur;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 475
    :cond_3
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getMonthList()Lnet/fortuna/ical4j/model/NumberList;

    move-result-object v1

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/NumberList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 476
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 477
    const-string v1, "BYMONTH"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 478
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 479
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->monthList:Lnet/fortuna/ical4j/model/NumberList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 481
    :cond_4
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getWeekNoList()Lnet/fortuna/ical4j/model/NumberList;

    move-result-object v1

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/NumberList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 482
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 483
    const-string v1, "BYWEEKNO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 484
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 485
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->weekNoList:Lnet/fortuna/ical4j/model/NumberList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 487
    :cond_5
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getYearDayList()Lnet/fortuna/ical4j/model/NumberList;

    move-result-object v1

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/NumberList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 488
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 489
    const-string v1, "BYYEARDAY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 490
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 491
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->yearDayList:Lnet/fortuna/ical4j/model/NumberList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 493
    :cond_6
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getMonthDayList()Lnet/fortuna/ical4j/model/NumberList;

    move-result-object v1

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/NumberList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 494
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 495
    const-string v1, "BYMONTHDAY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 496
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 497
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->monthDayList:Lnet/fortuna/ical4j/model/NumberList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 499
    :cond_7
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getDayList()Lnet/fortuna/ical4j/model/WeekDayList;

    move-result-object v1

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/WeekDayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 500
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 501
    const-string v1, "BYDAY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 502
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 503
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->dayList:Lnet/fortuna/ical4j/model/WeekDayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 505
    :cond_8
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getHourList()Lnet/fortuna/ical4j/model/NumberList;

    move-result-object v1

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/NumberList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 506
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 507
    const-string v1, "BYHOUR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 508
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 509
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->hourList:Lnet/fortuna/ical4j/model/NumberList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 511
    :cond_9
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getMinuteList()Lnet/fortuna/ical4j/model/NumberList;

    move-result-object v1

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/NumberList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 512
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 513
    const-string v1, "BYMINUTE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 514
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 515
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->minuteList:Lnet/fortuna/ical4j/model/NumberList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 517
    :cond_a
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getSecondList()Lnet/fortuna/ical4j/model/NumberList;

    move-result-object v1

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/NumberList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 518
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 519
    const-string v1, "BYSECOND"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 520
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 521
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->secondList:Lnet/fortuna/ical4j/model/NumberList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 523
    :cond_b
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Recur;->getSetPosList()Lnet/fortuna/ical4j/model/NumberList;

    move-result-object v1

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/NumberList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    .line 524
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 525
    const-string v1, "BYSETPOS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 526
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 527
    iget-object v1, p0, Lnet/fortuna/ical4j/model/Recur;->setPosList:Lnet/fortuna/ical4j/model/NumberList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 529
    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
