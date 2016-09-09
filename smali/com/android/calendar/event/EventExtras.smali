.class public interface abstract Lcom/android/calendar/event/EventExtras;
.super Ljava/lang/Object;
.source "EventExtras.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract clone()Lcom/android/calendar/event/EventExtras;
.end method

.method public abstract getConferencePhoneNumbersDetails()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/event/PhoneNumberDetails;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEventLocations()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/geo/EventLocation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEventSource()Lcom/google/calendar/v2/client/service/api/events/EventSource;
.end method

.method public abstract getHangouts()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/Hangout;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getModelAttachments()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/Attachment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRelatedContacts()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/event/CalendarEventModel$Attendee;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTitleAnnotations(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasImageData(Ljava/lang/String;)Z
.end method

.method public abstract hasSmartMail()Z
.end method

.method public abstract hasStructuredLocation()Z
.end method
