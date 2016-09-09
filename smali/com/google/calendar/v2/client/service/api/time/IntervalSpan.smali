.class public interface abstract Lcom/google/calendar/v2/client/service/api/time/IntervalSpan;
.super Ljava/lang/Object;
.source "IntervalSpan.java"


# virtual methods
.method public abstract addInterval(Lcom/google/calendar/v2/client/service/api/time/Interval;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/v2/client/service/api/time/Interval",
            "<+",
            "Lcom/google/calendar/v2/client/service/api/time/Instant;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract getSpanInterval()Lcom/google/calendar/v2/client/service/api/time/Interval;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/api/time/Interval",
            "<",
            "Lcom/google/calendar/v2/client/service/api/time/Instant;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeInterval(Lcom/google/calendar/v2/client/service/api/time/Interval;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/v2/client/service/api/time/Interval",
            "<+",
            "Lcom/google/calendar/v2/client/service/api/time/Instant;",
            ">;)Z"
        }
    .end annotation
.end method
