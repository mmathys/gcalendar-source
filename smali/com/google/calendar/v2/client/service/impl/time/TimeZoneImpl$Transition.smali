.class Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl$Transition;
.super Ljava/lang/Object;
.source "TimeZoneImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Transition"
.end annotation


# instance fields
.field public final adjustment:I

.field public final time:J


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 35
    if-ne p0, p1, :cond_1

    .line 42
    :cond_0
    :goto_0
    return v0

    .line 38
    :cond_1
    instance-of v2, p1, Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl$Transition;

    if-nez v2, :cond_2

    move v0, v1

    .line 39
    goto :goto_0

    .line 41
    :cond_2
    check-cast p1, Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl$Transition;

    .line 42
    iget-wide v2, p0, Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl$Transition;->time:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v4, p1, Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl$Transition;->time:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl$Transition;->adjustment:I

    .line 43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl$Transition;->adjustment:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl$Transition;->time:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget v1, p0, Lcom/google/calendar/v2/client/service/impl/time/TimeZoneImpl$Transition;->adjustment:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/calendar/v2/common/ObjectUtil;->hashCode(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
