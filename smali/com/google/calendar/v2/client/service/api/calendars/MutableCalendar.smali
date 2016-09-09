.class public interface abstract Lcom/google/calendar/v2/client/service/api/calendars/MutableCalendar;
.super Ljava/lang/Object;
.source "MutableCalendar.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/api/calendars/Calendar;
.implements Lcom/google/calendar/v2/client/service/api/common/UniquelyIdentifiable;
.implements Lcom/google/calendar/v2/client/service/common/Observable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/calendar/v2/client/service/api/calendars/Calendar;",
        "Lcom/google/calendar/v2/client/service/api/common/UniquelyIdentifiable",
        "<",
        "Lcom/google/calendar/v2/client/service/api/common/CalendarKey;",
        ">;",
        "Lcom/google/calendar/v2/client/service/common/Observable",
        "<",
        "Lcom/google/calendar/v2/client/service/api/calendars/MutableCalendar;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract isNewCalendar()Z
.end method

.method public abstract mutableAllDayReminders()Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Reminder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract mutableBackgroundColor()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;"
        }
    .end annotation
.end method

.method public abstract mutableForegroundColor()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;"
        }
    .end annotation
.end method

.method public abstract mutableIsDailyAgendaEnabled()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;
.end method

.method public abstract mutableIsSelected()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;
.end method

.method public abstract mutableName()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract mutableTimedEventReminders()Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Reminder;",
            ">;"
        }
    .end annotation
.end method
