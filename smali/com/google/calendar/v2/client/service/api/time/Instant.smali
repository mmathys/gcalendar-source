.class public interface abstract Lcom/google/calendar/v2/client/service/api/time/Instant;
.super Ljava/lang/Object;
.source "Instant.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/calendar/v2/client/service/api/time/Instant;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract compareTo(Lcom/google/calendar/v2/client/service/api/time/Instant;)I
.end method

.method public abstract durationSince(Lcom/google/calendar/v2/client/service/api/time/Instant;)Lcom/google/calendar/v2/client/service/api/time/Duration;
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract getMillis()J
.end method

.method public abstract getTimeZone()Lcom/google/calendar/v2/client/service/api/time/TimeZone;
.end method

.method public abstract isAfter(Lcom/google/calendar/v2/client/service/api/time/Instant;)Z
.end method

.method public abstract isBefore(Lcom/google/calendar/v2/client/service/api/time/Instant;)Z
.end method

.method public abstract minusDuration(Lcom/google/calendar/v2/client/service/api/time/Duration;)Lcom/google/calendar/v2/client/service/api/time/Instant;
.end method

.method public abstract plusDuration(Lcom/google/calendar/v2/client/service/api/time/Duration;)Lcom/google/calendar/v2/client/service/api/time/Instant;
.end method
