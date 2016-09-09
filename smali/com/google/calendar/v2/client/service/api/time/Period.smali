.class public Lcom/google/calendar/v2/client/service/api/time/Period;
.super Ljava/lang/Object;
.source "Period.java"


# instance fields
.field private final days:I

.field private final hours:I

.field private final millis:J

.field private final minutes:I

.field private final months:I

.field private final weeks:I

.field private final years:I


# direct methods
.method private constructor <init>(IIIIIIJ)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->years:I

    .line 36
    iput p2, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->months:I

    .line 37
    iput p3, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->weeks:I

    .line 38
    iput p4, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->days:I

    .line 39
    iput p5, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->hours:I

    .line 40
    iput p6, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->minutes:I

    .line 41
    iput-wide p7, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->millis:J

    .line 42
    return-void
.end method

.method public static days(I)Lcom/google/calendar/v2/client/service/api/time/Period;
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 57
    new-instance v1, Lcom/google/calendar/v2/client/service/api/time/Period;

    const-wide/16 v8, 0x0

    move v3, v2

    move v4, v2

    move v5, p0

    move v6, v2

    move v7, v2

    invoke-direct/range {v1 .. v9}, Lcom/google/calendar/v2/client/service/api/time/Period;-><init>(IIIIIIJ)V

    return-object v1
.end method

.method public static hours(I)Lcom/google/calendar/v2/client/service/api/time/Period;
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 61
    new-instance v1, Lcom/google/calendar/v2/client/service/api/time/Period;

    const-wide/16 v8, 0x0

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, p0

    move v7, v2

    invoke-direct/range {v1 .. v9}, Lcom/google/calendar/v2/client/service/api/time/Period;-><init>(IIIIIIJ)V

    return-object v1
.end method

.method public static millis(J)Lcom/google/calendar/v2/client/service/api/time/Period;
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 69
    new-instance v1, Lcom/google/calendar/v2/client/service/api/time/Period;

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move-wide v8, p0

    invoke-direct/range {v1 .. v9}, Lcom/google/calendar/v2/client/service/api/time/Period;-><init>(IIIIIIJ)V

    return-object v1
.end method

.method public static minutes(I)Lcom/google/calendar/v2/client/service/api/time/Period;
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 65
    new-instance v1, Lcom/google/calendar/v2/client/service/api/time/Period;

    const-wide/16 v8, 0x0

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, p0

    invoke-direct/range {v1 .. v9}, Lcom/google/calendar/v2/client/service/api/time/Period;-><init>(IIIIIIJ)V

    return-object v1
.end method

.method public static months(I)Lcom/google/calendar/v2/client/service/api/time/Period;
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 49
    new-instance v1, Lcom/google/calendar/v2/client/service/api/time/Period;

    const-wide/16 v8, 0x0

    move v3, p0

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    invoke-direct/range {v1 .. v9}, Lcom/google/calendar/v2/client/service/api/time/Period;-><init>(IIIIIIJ)V

    return-object v1
.end method

.method public static weeks(I)Lcom/google/calendar/v2/client/service/api/time/Period;
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 53
    new-instance v1, Lcom/google/calendar/v2/client/service/api/time/Period;

    const-wide/16 v8, 0x0

    move v3, v2

    move v4, p0

    move v5, v2

    move v6, v2

    move v7, v2

    invoke-direct/range {v1 .. v9}, Lcom/google/calendar/v2/client/service/api/time/Period;-><init>(IIIIIIJ)V

    return-object v1
.end method

.method public static years(I)Lcom/google/calendar/v2/client/service/api/time/Period;
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 45
    new-instance v1, Lcom/google/calendar/v2/client/service/api/time/Period;

    const-wide/16 v8, 0x0

    move v2, p0

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-direct/range {v1 .. v9}, Lcom/google/calendar/v2/client/service/api/time/Period;-><init>(IIIIIIJ)V

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 177
    instance-of v1, p1, Lcom/google/calendar/v2/client/service/api/time/Period;

    if-nez v1, :cond_1

    .line 181
    :cond_0
    :goto_0
    return v0

    .line 180
    :cond_1
    check-cast p1, Lcom/google/calendar/v2/client/service/api/time/Period;

    .line 181
    iget v1, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->years:I

    iget v2, p1, Lcom/google/calendar/v2/client/service/api/time/Period;->years:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->months:I

    iget v2, p1, Lcom/google/calendar/v2/client/service/api/time/Period;->months:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->weeks:I

    iget v2, p1, Lcom/google/calendar/v2/client/service/api/time/Period;->weeks:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->days:I

    iget v2, p1, Lcom/google/calendar/v2/client/service/api/time/Period;->days:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->hours:I

    iget v2, p1, Lcom/google/calendar/v2/client/service/api/time/Period;->hours:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->minutes:I

    iget v2, p1, Lcom/google/calendar/v2/client/service/api/time/Period;->minutes:I

    if-ne v1, v2, :cond_0

    iget-wide v2, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->millis:J

    iget-wide v4, p1, Lcom/google/calendar/v2/client/service/api/time/Period;->millis:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getDays()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->days:I

    return v0
.end method

.method public getHours()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->hours:I

    return v0
.end method

.method public getMillis()J
    .locals 2

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->millis:J

    return-wide v0
.end method

.method public getMinutes()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->minutes:I

    return v0
.end method

.method public getMonths()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->months:I

    return v0
.end method

.method public getWeeks()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->weeks:I

    return v0
.end method

.method public getYears()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->years:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 172
    iget v0, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->years:I

    iget v1, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->months:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->weeks:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->days:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->hours:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->minutes:I

    add-int/2addr v0, v1

    iget-wide v2, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->millis:J

    long-to-int v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public minus(Lcom/google/calendar/v2/client/service/api/time/Period;)Lcom/google/calendar/v2/client/service/api/time/Period;
    .locals 12

    .prologue
    .line 143
    new-instance v1, Lcom/google/calendar/v2/client/service/api/time/Period;

    iget v0, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->years:I

    .line 144
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/time/Period;->getYears()I

    move-result v2

    sub-int v2, v0, v2

    iget v0, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->months:I

    .line 145
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/time/Period;->getMonths()I

    move-result v3

    sub-int v3, v0, v3

    iget v0, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->weeks:I

    .line 146
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/time/Period;->getWeeks()I

    move-result v4

    sub-int v4, v0, v4

    iget v0, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->days:I

    .line 147
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/time/Period;->getDays()I

    move-result v5

    sub-int v5, v0, v5

    iget v0, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->hours:I

    .line 148
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/time/Period;->getHours()I

    move-result v6

    sub-int v6, v0, v6

    iget v0, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->minutes:I

    .line 149
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/time/Period;->getMinutes()I

    move-result v7

    sub-int v7, v0, v7

    iget-wide v8, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->millis:J

    .line 150
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/time/Period;->getMillis()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/calendar/v2/client/service/api/time/Period;-><init>(IIIIIIJ)V

    .line 143
    return-object v1
.end method

.method public plus(Lcom/google/calendar/v2/client/service/api/time/Period;)Lcom/google/calendar/v2/client/service/api/time/Period;
    .locals 12

    .prologue
    .line 127
    new-instance v1, Lcom/google/calendar/v2/client/service/api/time/Period;

    iget v0, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->years:I

    .line 128
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/time/Period;->getYears()I

    move-result v2

    add-int/2addr v2, v0

    iget v0, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->months:I

    .line 129
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/time/Period;->getMonths()I

    move-result v3

    add-int/2addr v3, v0

    iget v0, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->weeks:I

    .line 130
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/time/Period;->getWeeks()I

    move-result v4

    add-int/2addr v4, v0

    iget v0, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->days:I

    .line 131
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/time/Period;->getDays()I

    move-result v5

    add-int/2addr v5, v0

    iget v0, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->hours:I

    .line 132
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/time/Period;->getHours()I

    move-result v6

    add-int/2addr v6, v0

    iget v0, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->minutes:I

    .line 133
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/time/Period;->getMinutes()I

    move-result v7

    add-int/2addr v7, v0

    iget-wide v8, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->millis:J

    .line 134
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/time/Period;->getMillis()J

    move-result-wide v10

    add-long/2addr v8, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/calendar/v2/client/service/api/time/Period;-><init>(IIIIIIJ)V

    .line 127
    return-object v1
.end method

.method public times(I)Lcom/google/calendar/v2/client/service/api/time/Period;
    .locals 12

    .prologue
    .line 160
    new-instance v1, Lcom/google/calendar/v2/client/service/api/time/Period;

    iget v0, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->years:I

    mul-int v2, v0, p1

    iget v0, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->months:I

    mul-int v3, v0, p1

    iget v0, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->weeks:I

    mul-int v4, v0, p1

    iget v0, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->days:I

    mul-int v5, v0, p1

    iget v0, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->hours:I

    mul-int v6, v0, p1

    iget v0, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->minutes:I

    mul-int v7, v0, p1

    iget-wide v8, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->millis:J

    int-to-long v10, p1

    mul-long/2addr v8, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/calendar/v2/client/service/api/time/Period;-><init>(IIIIIIJ)V

    return-object v1
.end method

.method public toStandardDayTime()Lcom/google/calendar/v2/client/service/api/time/Period;
    .locals 12

    .prologue
    const-wide/32 v6, 0x5265c00

    const-wide/32 v8, 0x36ee80

    const-wide/32 v10, 0xea60

    const/4 v2, 0x0

    .line 222
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/api/time/Period;->toStandardMillis()J

    move-result-wide v0

    .line 223
    div-long v4, v0, v6

    long-to-int v5, v4

    .line 224
    rem-long v6, v0, v6

    div-long/2addr v6, v8

    long-to-int v6, v6

    .line 225
    rem-long v8, v0, v8

    div-long/2addr v8, v10

    long-to-int v7, v8

    .line 226
    rem-long v8, v0, v10

    .line 227
    new-instance v1, Lcom/google/calendar/v2/client/service/api/time/Period;

    move v3, v2

    move v4, v2

    invoke-direct/range {v1 .. v9}, Lcom/google/calendar/v2/client/service/api/time/Period;-><init>(IIIIIIJ)V

    return-object v1
.end method

.method public toStandardDuration()Lcom/google/calendar/v2/client/service/api/time/Duration;
    .locals 2

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/api/time/Period;->toStandardMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/calendar/v2/client/service/api/time/Duration;->millis(J)Lcom/google/calendar/v2/client/service/api/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public toStandardMillis()J
    .locals 6

    .prologue
    .line 205
    iget v0, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->years:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->months:I

    if-eqz v0, :cond_1

    .line 206
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 208
    :cond_1
    iget v0, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->weeks:I

    int-to-long v0, v0

    const-wide/32 v2, 0x240c8400

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->days:I

    int-to-long v2, v2

    const-wide/32 v4, 0x5265c00

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iget v2, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->hours:I

    int-to-long v2, v2

    const-wide/32 v4, 0x36ee80

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iget v2, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->minutes:I

    int-to-long v2, v2

    const-wide/32 v4, 0xea60

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->millis:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 232
    invoke-static {p0}, Lcom/google/calendar/v2/common/ObjectUtil;->toStringHelper(Ljava/lang/Object;)Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;

    move-result-object v0

    const-string v1, "Years"

    iget v2, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->years:I

    .line 233
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;->addValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;

    move-result-object v0

    const-string v1, "Months"

    iget v2, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->months:I

    .line 234
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;->addValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;

    move-result-object v0

    const-string v1, "Weeks"

    iget v2, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->weeks:I

    .line 235
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;->addValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;

    move-result-object v0

    const-string v1, "Days"

    iget v2, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->days:I

    .line 236
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;->addValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;

    move-result-object v0

    const-string v1, "Hours"

    iget v2, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->hours:I

    .line 237
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;->addValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;

    move-result-object v0

    const-string v1, "Minutes"

    iget v2, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->minutes:I

    .line 238
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;->addValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;

    move-result-object v0

    const-string v1, "Millis"

    iget-wide v2, p0, Lcom/google/calendar/v2/client/service/api/time/Period;->millis:J

    .line 239
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;->addValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;

    move-result-object v0

    const/4 v1, 0x0

    .line 240
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;->omitValue(Ljava/lang/Object;)Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    return-object v0
.end method
