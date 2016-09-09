.class public interface abstract Lcom/android/calendar/event/data/InputAspectRecurrence;
.super Ljava/lang/Object;
.source "InputAspectRecurrence.java"


# virtual methods
.method public abstract addCanChangeRecurrenceListener(Lcom/google/calendar/v2/client/service/common/Listener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract canChangeRecurrence()Z
.end method

.method public abstract mutableRecurrenceData()Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;
.end method

.method public abstract mutableStartTime()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/time/DateTime;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeCanChangeRecurrenceListener(Lcom/google/calendar/v2/client/service/common/Listener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method
