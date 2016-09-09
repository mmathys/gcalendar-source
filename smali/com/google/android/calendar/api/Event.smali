.class public interface abstract Lcom/google/android/calendar/api/Event;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Landroid/os/Parcelable;


# virtual methods
.method public abstract getAttachments()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/calendar/api/attachments/Attachment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAttendees()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/calendar/api/attendee/Attendee;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAvailability()I
.end method

.method public abstract getColorOverride()Lcom/google/android/calendar/api/ColorDescriptor;
.end method

.method public abstract getDeepLinkData()Lcom/google/android/calendar/api/deeplinkdata/DeepLinkData;
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getDescriptor()Lcom/google/android/calendar/api/EventDescriptor;
.end method

.method public abstract getEndMillisSinceEpoch()J
.end method

.method public abstract getHabitInstance()Lcom/google/android/calendar/api/Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/calendar/api/Feature",
            "<",
            "Lcom/google/android/calendar/api/HabitInstance;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLocation()Lcom/google/android/calendar/api/structuredlocation/StructuredLocation;
.end method

.method public abstract getNotifications()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/calendar/api/notifications/Notification;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRecurrence()Lcom/google/android/calendar/api/time/Recurrence;
.end method

.method public abstract getRecurringTimeZoneId()Ljava/lang/String;
.end method

.method public abstract getSingleEndTimeZoneId()Ljava/lang/String;
.end method

.method public abstract getSingleStartTimeZoneId()Ljava/lang/String;
.end method

.method public abstract getStartMillisSinceEpoch()J
.end method

.method public abstract getSummary()Ljava/lang/String;
.end method

.method public abstract getVisibility()I
.end method

.method public abstract isAllDayEvent()Z
.end method
