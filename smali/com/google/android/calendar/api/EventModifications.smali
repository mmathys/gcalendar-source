.class public interface abstract Lcom/google/android/calendar/api/EventModifications;
.super Ljava/lang/Object;
.source "EventModifications.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/google/android/calendar/api/Event;


# virtual methods
.method public abstract getAttachmentModifications()Lcom/google/android/calendar/api/attachments/AttachmentModifications;
.end method

.method public abstract getAttendeeModifications()Lcom/google/android/calendar/api/attendee/AttendeeModifications;
.end method

.method public abstract getHabitInstanceModifications()Lcom/google/android/calendar/api/Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/calendar/api/Feature",
            "<",
            "Lcom/google/android/calendar/api/HabitInstanceModifications;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLocationModification()Lcom/google/android/calendar/api/structuredlocation/StructuredLocationModifications;
.end method

.method public abstract getNotificationModifications()Lcom/google/android/calendar/api/notifications/NotificationModifications;
.end method

.method public abstract getOriginal()Lcom/google/android/calendar/api/Event;
.end method

.method public abstract isAllDayModified()Z
.end method

.method public abstract isAvailabilityModified()Z
.end method

.method public abstract isColorOverrideModified()Z
.end method

.method public abstract isDescriptionModified()Z
.end method

.method public abstract isEndModified()Z
.end method

.method public abstract isModified()Z
.end method

.method public abstract isNewEvent()Z
.end method

.method public abstract isRecurringTimeZoneModified()Z
.end method

.method public abstract isSingleEndTimeZoneModified()Z
.end method

.method public abstract isSingleStartTimeZoneModified()Z
.end method

.method public abstract isStartModified()Z
.end method

.method public abstract isSummaryModified()Z
.end method

.method public abstract isVisibilityModified()Z
.end method

.method public abstract setAvailability(I)Lcom/google/android/calendar/api/EventModifications;
.end method

.method public abstract setColorOverride(Lcom/google/android/calendar/api/ColorDescriptor;)Lcom/google/android/calendar/api/EventModifications;
.end method

.method public abstract setDescription(Ljava/lang/String;)Lcom/google/android/calendar/api/EventModifications;
.end method

.method public abstract setEndMillisSinceEpoch(J)Lcom/google/android/calendar/api/EventModifications;
.end method

.method public abstract setSingleEndTimeZoneId(Ljava/lang/String;)Lcom/google/android/calendar/api/EventModifications;
.end method

.method public abstract setSingleStartTimeZoneId(Ljava/lang/String;)Lcom/google/android/calendar/api/EventModifications;
.end method

.method public abstract setStartMillisSinceEpoch(J)Lcom/google/android/calendar/api/EventModifications;
.end method

.method public abstract setSummary(Ljava/lang/String;)Lcom/google/android/calendar/api/EventModifications;
.end method

.method public abstract setToAllDayWithDates(JJ)Lcom/google/android/calendar/api/EventModifications;
.end method

.method public abstract setToTimedWithTimes(JJ)Lcom/google/android/calendar/api/EventModifications;
.end method

.method public abstract setVisibility(I)Lcom/google/android/calendar/api/EventModifications;
.end method

.method public abstract switchCalendar(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;)Lcom/google/android/calendar/api/EventDescriptor;
.end method
