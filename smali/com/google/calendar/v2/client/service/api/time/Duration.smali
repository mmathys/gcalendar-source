.class public Lcom/google/calendar/v2/client/service/api/time/Duration;
.super Ljava/lang/Object;
.source "Duration.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/calendar/v2/client/service/api/time/Duration;",
        ">;"
    }
.end annotation


# instance fields
.field private final millis:J


# direct methods
.method private constructor <init>(J)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide p1, p0, Lcom/google/calendar/v2/client/service/api/time/Duration;->millis:J

    .line 26
    return-void
.end method

.method public static between(Lcom/google/calendar/v2/client/service/api/time/Instant;Lcom/google/calendar/v2/client/service/api/time/Instant;)Lcom/google/calendar/v2/client/service/api/time/Duration;
    .locals 6

    .prologue
    .line 29
    new-instance v0, Lcom/google/calendar/v2/client/service/api/time/Duration;

    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/time/Instant;->getMillis()J

    move-result-wide v2

    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/time/Instant;->getMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Lcom/google/calendar/v2/client/service/api/time/Duration;-><init>(J)V

    return-object v0
.end method

.method private divideAndRound(JI)I
    .locals 5

    .prologue
    .line 87
    .line 88
    invoke-static {p1, p2}, Ljava/lang/Long;->signum(J)I

    move-result v0

    mul-int/2addr v0, p3

    div-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    add-long/2addr v0, p1

    int-to-long v2, p3

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 87
    return v0
.end method

.method public static millis(J)Lcom/google/calendar/v2/client/service/api/time/Duration;
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcom/google/calendar/v2/client/service/api/time/Duration;

    invoke-direct {v0, p0, p1}, Lcom/google/calendar/v2/client/service/api/time/Duration;-><init>(J)V

    return-object v0
.end method

.method public static standardDays(J)Lcom/google/calendar/v2/client/service/api/time/Duration;
    .locals 4

    .prologue
    .line 57
    new-instance v0, Lcom/google/calendar/v2/client/service/api/time/Duration;

    const-wide/32 v2, 0x5265c00

    mul-long/2addr v2, p0

    invoke-direct {v0, v2, v3}, Lcom/google/calendar/v2/client/service/api/time/Duration;-><init>(J)V

    return-object v0
.end method

.method public static standardHours(J)Lcom/google/calendar/v2/client/service/api/time/Duration;
    .locals 4

    .prologue
    .line 49
    new-instance v0, Lcom/google/calendar/v2/client/service/api/time/Duration;

    const-wide/32 v2, 0x36ee80

    mul-long/2addr v2, p0

    invoke-direct {v0, v2, v3}, Lcom/google/calendar/v2/client/service/api/time/Duration;-><init>(J)V

    return-object v0
.end method

.method public static standardMinutes(J)Lcom/google/calendar/v2/client/service/api/time/Duration;
    .locals 4

    .prologue
    .line 41
    new-instance v0, Lcom/google/calendar/v2/client/service/api/time/Duration;

    const-wide/32 v2, 0xea60

    mul-long/2addr v2, p0

    invoke-direct {v0, v2, v3}, Lcom/google/calendar/v2/client/service/api/time/Duration;-><init>(J)V

    return-object v0
.end method

.method public static standardWeeks(J)Lcom/google/calendar/v2/client/service/api/time/Duration;
    .locals 4

    .prologue
    .line 65
    new-instance v0, Lcom/google/calendar/v2/client/service/api/time/Duration;

    const-wide/32 v2, 0x240c8400

    mul-long/2addr v2, p0

    invoke-direct {v0, v2, v3}, Lcom/google/calendar/v2/client/service/api/time/Duration;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/google/calendar/v2/client/service/api/time/Duration;)I
    .locals 4

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/api/time/Duration;->getMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/time/Duration;->getMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 21
    check-cast p1, Lcom/google/calendar/v2/client/service/api/time/Duration;

    invoke-virtual {p0, p1}, Lcom/google/calendar/v2/client/service/api/time/Duration;->compareTo(Lcom/google/calendar/v2/client/service/api/time/Duration;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 79
    instance-of v1, p1, Lcom/google/calendar/v2/client/service/api/time/Duration;

    if-nez v1, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v0

    .line 82
    :cond_1
    check-cast p1, Lcom/google/calendar/v2/client/service/api/time/Duration;

    .line 83
    iget-wide v2, p0, Lcom/google/calendar/v2/client/service/api/time/Duration;->millis:J

    iget-wide v4, p1, Lcom/google/calendar/v2/client/service/api/time/Duration;->millis:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getMillis()J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/google/calendar/v2/client/service/api/time/Duration;->millis:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/google/calendar/v2/client/service/api/time/Duration;->millis:J

    long-to-int v0, v0

    return v0
.end method

.method public isExactDays()Z
    .locals 4

    .prologue
    .line 120
    iget-wide v0, p0, Lcom/google/calendar/v2/client/service/api/time/Duration;->millis:J

    const-wide/32 v2, 0x5265c00

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExactHours()Z
    .locals 4

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/google/calendar/v2/client/service/api/time/Duration;->millis:J

    const-wide/32 v2, 0x36ee80

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExactWeeks()Z
    .locals 4

    .prologue
    .line 152
    iget-wide v0, p0, Lcom/google/calendar/v2/client/service/api/time/Duration;->millis:J

    const-wide/32 v2, 0x240c8400

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toNextStandardRoundedDays()Lcom/google/calendar/v2/client/service/api/time/Period;
    .locals 6

    .prologue
    const-wide/32 v4, 0x5265c00

    .line 141
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/api/time/Duration;->isExactDays()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/calendar/v2/client/service/api/time/Duration;->millis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 142
    :cond_0
    iget-wide v0, p0, Lcom/google/calendar/v2/client/service/api/time/Duration;->millis:J

    div-long/2addr v0, v4

    long-to-int v0, v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/api/time/Period;->days(I)Lcom/google/calendar/v2/client/service/api/time/Period;

    move-result-object v0

    .line 144
    :goto_0
    return-object v0

    :cond_1
    iget-wide v0, p0, Lcom/google/calendar/v2/client/service/api/time/Duration;->millis:J

    div-long/2addr v0, v4

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/api/time/Period;->days(I)Lcom/google/calendar/v2/client/service/api/time/Period;

    move-result-object v0

    goto :goto_0
.end method

.method public toStandardRoundedDays()Lcom/google/calendar/v2/client/service/api/time/Period;
    .locals 3

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/google/calendar/v2/client/service/api/time/Duration;->millis:J

    const v2, 0x5265c00

    invoke-direct {p0, v0, v1, v2}, Lcom/google/calendar/v2/client/service/api/time/Duration;->divideAndRound(JI)I

    move-result v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/api/time/Period;->days(I)Lcom/google/calendar/v2/client/service/api/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public toStandardRoundedHours()Lcom/google/calendar/v2/client/service/api/time/Period;
    .locals 3

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/google/calendar/v2/client/service/api/time/Duration;->millis:J

    const v2, 0x36ee80

    invoke-direct {p0, v0, v1, v2}, Lcom/google/calendar/v2/client/service/api/time/Duration;->divideAndRound(JI)I

    move-result v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/api/time/Period;->hours(I)Lcom/google/calendar/v2/client/service/api/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public toStandardRoundedMinutes()Lcom/google/calendar/v2/client/service/api/time/Period;
    .locals 3

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/google/calendar/v2/client/service/api/time/Duration;->millis:J

    const v2, 0xea60

    invoke-direct {p0, v0, v1, v2}, Lcom/google/calendar/v2/client/service/api/time/Duration;->divideAndRound(JI)I

    move-result v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/api/time/Period;->minutes(I)Lcom/google/calendar/v2/client/service/api/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public toStandardRoundedWeeks()Lcom/google/calendar/v2/client/service/api/time/Period;
    .locals 3

    .prologue
    .line 161
    iget-wide v0, p0, Lcom/google/calendar/v2/client/service/api/time/Duration;->millis:J

    const v2, 0x240c8400

    invoke-direct {p0, v0, v1, v2}, Lcom/google/calendar/v2/client/service/api/time/Duration;->divideAndRound(JI)I

    move-result v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/api/time/Period;->weeks(I)Lcom/google/calendar/v2/client/service/api/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 166
    invoke-static {p0}, Lcom/google/calendar/v2/common/ObjectUtil;->toStringHelper(Ljava/lang/Object;)Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;

    move-result-object v0

    const-string v1, "Millis"

    iget-wide v2, p0, Lcom/google/calendar/v2/client/service/api/time/Duration;->millis:J

    .line 167
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;->addValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    return-object v0
.end method
