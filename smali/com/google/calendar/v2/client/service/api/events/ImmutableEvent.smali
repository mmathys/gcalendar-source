.class public interface abstract Lcom/google/calendar/v2/client/service/api/events/ImmutableEvent;
.super Ljava/lang/Object;
.source "ImmutableEvent.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/api/common/UniquelyIdentifiable;
.implements Lcom/google/calendar/v2/client/service/api/events/Event;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/calendar/v2/client/service/api/common/UniquelyIdentifiable",
        "<",
        "Lcom/google/calendar/v2/client/service/api/common/EventKey;",
        ">;",
        "Lcom/google/calendar/v2/client/service/api/events/Event;"
    }
.end annotation


# virtual methods
.method public abstract getFirstStart()Lcom/google/calendar/v2/client/service/api/time/DateTime;
.end method

.method public abstract getInstanceType()Lcom/google/calendar/v2/client/service/api/events/InstanceType;
.end method

.method public abstract getOriginalAllDay()Z
.end method

.method public abstract getOriginalStart()Lcom/google/calendar/v2/client/service/api/time/DateTime;
.end method

.method public abstract getRecurringEventId()Ljava/lang/String;
.end method

.method public abstract isEquivalentTo(Lcom/google/calendar/v2/client/service/api/events/MutableEvent;)Z
.end method
