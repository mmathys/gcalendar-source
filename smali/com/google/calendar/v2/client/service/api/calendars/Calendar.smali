.class public interface abstract Lcom/google/calendar/v2/client/service/api/calendars/Calendar;
.super Ljava/lang/Object;
.source "Calendar.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/api/common/UniquelyIdentifiable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/calendar/v2/client/service/api/common/UniquelyIdentifiable",
        "<",
        "Lcom/google/calendar/v2/client/service/api/common/CalendarKey;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract canChangeMetadata()Z
.end method

.method public abstract canUnsubscribe()Z
.end method

.method public abstract getAccessRole()Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;
.end method

.method public abstract getAllDayReminders()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Reminder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBackgroundColor()Lcom/google/calendar/v2/client/service/api/common/Color;
.end method

.method public abstract getForegroundColor()Lcom/google/calendar/v2/client/service/api/common/Color;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getTimedEventReminders()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Reminder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getType()Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;
.end method

.method public abstract isDailyAgendaEnabled()Z
.end method

.method public abstract isEditable()Z
.end method

.method public abstract isFindTimeSupported()Z
.end method

.method public abstract isInDefaultDailyAgendaSet()Z
.end method

.method public abstract isPrimary()Z
.end method

.method public abstract isSelected()Z
.end method

.method public abstract isSharedWithOthers()Z
.end method
