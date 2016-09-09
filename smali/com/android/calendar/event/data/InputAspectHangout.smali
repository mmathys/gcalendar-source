.class public interface abstract Lcom/android/calendar/event/data/InputAspectHangout;
.super Ljava/lang/Object;
.source "InputAspectHangout.java"


# virtual methods
.method public abstract attendees()Lcom/google/calendar/v2/client/service/common/ObservableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ObservableCollection",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/Attendee;",
            ">;"
        }
    .end annotation
.end method

.method public abstract autoAddHangout()Z
.end method

.method public abstract calendar()Lcom/google/calendar/v2/client/service/common/ObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            ">;"
        }
    .end annotation
.end method

.method public abstract canChangeHangout()Z
.end method

.method public abstract isThorSupported()Z
.end method

.method public abstract mutableHangout()Lcom/google/calendar/v2/client/service/api/events/ModifiableHangout;
.end method
