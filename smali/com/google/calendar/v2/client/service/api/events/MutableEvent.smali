.class public interface abstract Lcom/google/calendar/v2/client/service/api/events/MutableEvent;
.super Ljava/lang/Object;
.source "MutableEvent.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/api/events/Event;
.implements Lcom/google/calendar/v2/client/service/common/Observable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/calendar/v2/client/service/api/events/Event;",
        "Lcom/google/calendar/v2/client/service/common/Observable",
        "<",
        "Lcom/google/calendar/v2/client/service/api/events/MutableEvent;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<-",
            "Lcom/google/calendar/v2/client/service/api/events/MutableEvent;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addRelatedContact(Lcom/google/calendar/v2/client/service/api/contacts/Contact;)V
.end method

.method public abstract changeAttendeesToRelatedContacts()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract changeRelatedContactsToAttendees()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract finishBatchUpdate()V
.end method

.method public abstract getRooms()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/Attendee;",
            ">;"
        }
    .end annotation
.end method

.method public abstract invite(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;)V
.end method

.method public abstract invite(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;Ljava/lang/String;)V
.end method

.method public abstract isNewEvent()Z
.end method

.method public abstract mutableAttachments()Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/Attachment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract mutableAvailability()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/Availability;",
            ">;"
        }
    .end annotation
.end method

.method public abstract mutableBackgroundImageUrl()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
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

.method public abstract mutableBackgroundVideoUrl()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
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

.method public abstract mutableDescription()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
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

.method public abstract mutableEndTime()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
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

.method public abstract mutableEndTimeZone()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/time/TimeZone;",
            ">;"
        }
    .end annotation
.end method

.method public abstract mutableGuestsCanInviteOthers()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;
.end method

.method public abstract mutableGuestsCanModify()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;
.end method

.method public abstract mutableHangout()Lcom/google/calendar/v2/client/service/api/events/ModifiableHangout;
.end method

.method public abstract mutableIsAllDay()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;
.end method

.method public abstract mutableLabelColor()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
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

.method public abstract mutableLocation()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
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

.method public abstract mutableRecurrenceData()Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;
.end method

.method public abstract mutableReminders()Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;
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

.method public abstract mutableStartTimeZone()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/time/TimeZone;",
            ">;"
        }
    .end annotation
.end method

.method public abstract mutableStructuredLocation()Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection",
            "<",
            "Lcom/google/calendar/v2/client/service/api/geo/EventLocation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract mutableTitle()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
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

.method public abstract mutableTitleAnnotations()Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract mutableVisibility()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/Visibility;",
            ">;"
        }
    .end annotation
.end method

.method public abstract observableAttendees()Lcom/google/calendar/v2/client/service/common/ObservableCollection;
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

.method public abstract observableBackgroundColor()Lcom/google/calendar/v2/client/service/common/ObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;"
        }
    .end annotation
.end method

.method public abstract observableCalendar()Lcom/google/calendar/v2/client/service/common/ObservableAtom;
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

.method public abstract observableForegroundColor()Lcom/google/calendar/v2/client/service/common/ObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;"
        }
    .end annotation
.end method

.method public abstract observableOwnResponse()Lcom/google/calendar/v2/client/service/common/ObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/Attendee;",
            ">;"
        }
    .end annotation
.end method

.method public abstract observableRelatedContacts()Lcom/google/calendar/v2/client/service/common/ObservableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ObservableCollection",
            "<",
            "Lcom/google/calendar/v2/client/service/api/contacts/Contact;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<-",
            "Lcom/google/calendar/v2/client/service/api/events/MutableEvent;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeRelatedContact(Lcom/google/calendar/v2/client/service/api/contacts/Contact;)V
.end method

.method public abstract respond(Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;Ljava/lang/String;I)V
.end method

.method public abstract setOptional(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;Z)V
.end method

.method public abstract startBatchUpdate()V
.end method

.method public abstract uninvite(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;)V
.end method
