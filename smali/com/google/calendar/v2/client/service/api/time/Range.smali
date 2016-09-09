.class public Lcom/google/calendar/v2/client/service/api/time/Range;
.super Lcom/google/calendar/v2/client/service/api/time/Interval;
.source "Range.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/calendar/v2/client/service/api/time/Interval",
        "<",
        "Lcom/google/calendar/v2/client/service/api/time/DateTime;",
        ">;"
    }
.end annotation


# instance fields
.field private final hasTime:Z


# direct methods
.method public constructor <init>(Lcom/google/calendar/v2/client/service/api/time/DateTime;Lcom/google/calendar/v2/client/service/api/time/DateTime;Z)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/google/calendar/v2/client/service/api/time/Interval;-><init>(Lcom/google/calendar/v2/client/service/api/time/Instant;Lcom/google/calendar/v2/client/service/api/time/Instant;)V

    .line 28
    iput-boolean p3, p0, Lcom/google/calendar/v2/client/service/api/time/Range;->hasTime:Z

    .line 29
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 53
    instance-of v1, p1, Lcom/google/calendar/v2/client/service/api/time/Range;

    if-nez v1, :cond_1

    .line 58
    :cond_0
    :goto_0
    return v0

    .line 57
    :cond_1
    check-cast p1, Lcom/google/calendar/v2/client/service/api/time/Range;

    .line 58
    invoke-super {p0, p1}, Lcom/google/calendar/v2/client/service/api/time/Interval;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/api/time/Range;->hasTime()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/time/Range;->hasTime()Z

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasTime()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/google/calendar/v2/client/service/api/time/Range;->hasTime:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/api/time/Range;->getStart()Lcom/google/calendar/v2/client/service/api/time/Instant;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/api/time/Range;->getEnd()Lcom/google/calendar/v2/client/service/api/time/Instant;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/api/time/Range;->hasTime()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/calendar/v2/common/ObjectUtil;->hashCode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/api/time/Range;->getStart()Lcom/google/calendar/v2/client/service/api/time/Instant;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/api/time/Range;->getStart()Lcom/google/calendar/v2/client/service/api/time/Instant;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/api/time/Range;->getStart()Lcom/google/calendar/v2/client/service/api/time/Instant;

    move-result-object v1

    check-cast v1, Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-interface {v1, v3}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->withMillisOfDay(I)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    move v2, v4

    .line 42
    :goto_0
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/api/time/Range;->getEnd()Lcom/google/calendar/v2/client/service/api/time/Instant;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/api/time/Range;->getEnd()Lcom/google/calendar/v2/client/service/api/time/Instant;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/api/time/Range;->getEnd()Lcom/google/calendar/v2/client/service/api/time/Instant;

    move-result-object v1

    check-cast v1, Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-interface {v1, v3}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->withMillisOfDay(I)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    move v1, v4

    .line 44
    :goto_1
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/api/time/Range;->getEnd()Lcom/google/calendar/v2/client/service/api/time/Instant;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/api/time/Range;->getEnd()Lcom/google/calendar/v2/client/service/api/time/Instant;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/api/time/Range;->getStart()Lcom/google/calendar/v2/client/service/api/time/Instant;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->isBefore(Lcom/google/calendar/v2/client/service/api/time/Instant;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_2
    move v0, v4

    .line 46
    :goto_2
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/api/time/Range;->getStart()Lcom/google/calendar/v2/client/service/api/time/Instant;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-boolean v5, p0, Lcom/google/calendar/v2/client/service/api/time/Range;->hasTime:Z

    if-nez v5, :cond_3

    if-eqz v2, :cond_7

    if-eqz v1, :cond_7

    :cond_3
    if-eqz v0, :cond_7

    .line 45
    :goto_3
    return v4

    :cond_4
    move v2, v3

    .line 40
    goto :goto_0

    :cond_5
    move v1, v3

    .line 42
    goto :goto_1

    :cond_6
    move v0, v3

    .line 44
    goto :goto_2

    :cond_7
    move v4, v3

    .line 46
    goto :goto_3
.end method
