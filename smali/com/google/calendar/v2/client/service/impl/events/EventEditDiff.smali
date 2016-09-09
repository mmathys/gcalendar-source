.class public Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;
.super Ljava/lang/Object;
.source "EventEditDiff.java"


# instance fields
.field private after:Lcom/google/calendar/v2/client/service/api/events/Event;

.field private before:Lcom/google/calendar/v2/client/service/api/events/Event;


# direct methods
.method private constructor <init>(Lcom/google/calendar/v2/client/service/api/events/EventEdit;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->getOriginalEvent()Lcom/google/calendar/v2/client/service/api/events/ImmutableEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->before:Lcom/google/calendar/v2/client/service/api/events/Event;

    .line 25
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/events/Event;

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->after:Lcom/google/calendar/v2/client/service/api/events/Event;

    .line 26
    return-void
.end method

.method public static from(Lcom/google/calendar/v2/client/service/api/events/EventEdit;)Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;

    invoke-direct {v0, p0}, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;-><init>(Lcom/google/calendar/v2/client/service/api/events/EventEdit;)V

    return-object v0
.end method


# virtual methods
.method public hasAttachmentChanges()Z
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->before:Lcom/google/calendar/v2/client/service/api/events/Event;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->after:Lcom/google/calendar/v2/client/service/api/events/Event;

    .line 94
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/Event;->getAttachments()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->before:Lcom/google/calendar/v2/client/service/api/events/Event;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/events/Event;->getAttachments()Ljava/util/List;

    move-result-object v1

    .line 93
    invoke-static {v0, v1}, Lcom/google/calendar/v2/client/service/common/ObservableCollections;->equalContentLists(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAttendeesChanges()Z
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->before:Lcom/google/calendar/v2/client/service/api/events/Event;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->after:Lcom/google/calendar/v2/client/service/api/events/Event;

    .line 89
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/Event;->getAttendees()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->before:Lcom/google/calendar/v2/client/service/api/events/Event;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/events/Event;->getAttendees()Ljava/util/List;

    move-result-object v1

    .line 88
    invoke-static {v0, v1}, Lcom/google/calendar/v2/client/service/common/ObservableCollections;->equalContentLists(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAvailabilityChanges()Z
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->before:Lcom/google/calendar/v2/client/service/api/events/Event;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->after:Lcom/google/calendar/v2/client/service/api/events/Event;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/Event;->getAvailability()Lcom/google/calendar/v2/client/service/api/events/Availability;

    move-result-object v0

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->before:Lcom/google/calendar/v2/client/service/api/events/Event;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/events/Event;->getAvailability()Lcom/google/calendar/v2/client/service/api/events/Availability;

    move-result-object v1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasBackgroundImageUrlChanges()Z
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->before:Lcom/google/calendar/v2/client/service/api/events/Event;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->after:Lcom/google/calendar/v2/client/service/api/events/Event;

    .line 131
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/Event;->getBackgroundImageUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->before:Lcom/google/calendar/v2/client/service/api/events/Event;

    .line 132
    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/events/Event;->getBackgroundImageUrl()Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 130
    :goto_0
    return v0

    .line 131
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasBackgroundVideoUrlChanges()Z
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->before:Lcom/google/calendar/v2/client/service/api/events/Event;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->after:Lcom/google/calendar/v2/client/service/api/events/Event;

    .line 137
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/Event;->getBackgroundVideoUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->before:Lcom/google/calendar/v2/client/service/api/events/Event;

    .line 138
    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/events/Event;->getBackgroundVideoUrl()Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 136
    :goto_0
    return v0

    .line 137
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDescriptionChanges()Z
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->before:Lcom/google/calendar/v2/client/service/api/events/Event;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->after:Lcom/google/calendar/v2/client/service/api/events/Event;

    .line 63
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/Event;->getDescription()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->before:Lcom/google/calendar/v2/client/service/api/events/Event;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/events/Event;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 62
    :goto_0
    return v0

    .line 63
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEndTimeChanges()Z
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->before:Lcom/google/calendar/v2/client/service/api/events/Event;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->after:Lcom/google/calendar/v2/client/service/api/events/Event;

    .line 51
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/Event;->isAllDay()Z

    move-result v0

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->before:Lcom/google/calendar/v2/client/service/api/events/Event;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/events/Event;->isAllDay()Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->after:Lcom/google/calendar/v2/client/service/api/events/Event;

    .line 52
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/Event;->getEndTime()Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->before:Lcom/google/calendar/v2/client/service/api/events/Event;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/events/Event;->getEndTime()Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->after:Lcom/google/calendar/v2/client/service/api/events/Event;

    .line 53
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/Event;->getEndTimeZone()Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    move-result-object v0

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->before:Lcom/google/calendar/v2/client/service/api/events/Event;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/events/Event;->getEndTimeZone()Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 50
    :goto_0
    return v0

    .line 53
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGuestsCanInviteOthersChanges()Z
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->before:Lcom/google/calendar/v2/client/service/api/events/Event;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->after:Lcom/google/calendar/v2/client/service/api/events/Event;

    .line 39
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/Event;->guestsCanInviteOthers()Z

    move-result v0

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->before:Lcom/google/calendar/v2/client/service/api/events/Event;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/events/Event;->guestsCanInviteOthers()Z

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 38
    :goto_0
    return v0

    .line 39
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGuestsCanModifyChanges()Z
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->before:Lcom/google/calendar/v2/client/service/api/events/Event;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->after:Lcom/google/calendar/v2/client/service/api/events/Event;

    .line 34
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/Event;->guestsCanModify()Z

    move-result v0

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->before:Lcom/google/calendar/v2/client/service/api/events/Event;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/events/Event;->guestsCanModify()Z

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 33
    :goto_0
    return v0

    .line 34
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHangoutChanges()Z
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->before:Lcom/google/calendar/v2/client/service/api/events/Event;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->after:Lcom/google/calendar/v2/client/service/api/events/Event;

    .line 109
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/Event;->getHangout()Lcom/google/calendar/v2/client/service/api/events/Hangout;

    move-result-object v0

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->before:Lcom/google/calendar/v2/client/service/api/events/Event;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/events/Event;->getHangout()Lcom/google/calendar/v2/client/service/api/events/Hangout;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/calendar/v2/client/service/impl/events/Hangouts;->equal(Lcom/google/calendar/v2/client/service/api/events/Hangout;Lcom/google/calendar/v2/client/service/api/events/Hangout;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 108
    :goto_0
    return v0

    .line 109
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLabelColorChanges()Z
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->before:Lcom/google/calendar/v2/client/service/api/events/Event;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->after:Lcom/google/calendar/v2/client/service/api/events/Event;

    .line 84
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/Event;->getLabelColor()Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v0

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->before:Lcom/google/calendar/v2/client/service/api/events/Event;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/events/Event;->getLabelColor()Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 83
    :goto_0
    return v0

    .line 84
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLocationChanges()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 67
    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->before:Lcom/google/calendar/v2/client/service/api/events/Event;

    if-nez v2, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v0

    .line 70
    :cond_1
    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->before:Lcom/google/calendar/v2/client/service/api/events/Event;

    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/events/Event;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->after:Lcom/google/calendar/v2/client/service/api/events/Event;

    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/events/Event;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 72
    goto :goto_0

    .line 74
    :cond_2
    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->after:Lcom/google/calendar/v2/client/service/api/events/Event;

    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/events/Event;->getLocation()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->before:Lcom/google/calendar/v2/client/service/api/events/Event;

    invoke-interface {v3}, Lcom/google/calendar/v2/client/service/api/events/Event;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hasRecurrenceChanges()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 121
    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->before:Lcom/google/calendar/v2/client/service/api/events/Event;

    if-nez v2, :cond_2

    .line 122
    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->after:Lcom/google/calendar/v2/client/service/api/events/Event;

    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/events/Event;->getRecurrenceData()Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 122
    goto :goto_0

    .line 124
    :cond_2
    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->after:Lcom/google/calendar/v2/client/service/api/events/Event;

    .line 125
    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/events/Event;->getRecurrenceData()Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;

    move-result-object v2

    iget-object v3, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->before:Lcom/google/calendar/v2/client/service/api/events/Event;

    invoke-interface {v3}, Lcom/google/calendar/v2/client/service/api/events/Event;->getRecurrenceData()Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;

    move-result-object v3

    .line 124
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hasRemindersChanges()Z
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->before:Lcom/google/calendar/v2/client/service/api/events/Event;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->after:Lcom/google/calendar/v2/client/service/api/events/Event;

    .line 104
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/Event;->getReminders()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->before:Lcom/google/calendar/v2/client/service/api/events/Event;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/events/Event;->getReminders()Ljava/util/List;

    move-result-object v1

    .line 103
    invoke-static {v0, v1}, Lcom/google/calendar/v2/client/service/common/ObservableCollections;->equalContentLists(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStartTimeChanges()Z
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->before:Lcom/google/calendar/v2/client/service/api/events/Event;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->after:Lcom/google/calendar/v2/client/service/api/events/Event;

    .line 44
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/Event;->isAllDay()Z

    move-result v0

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->before:Lcom/google/calendar/v2/client/service/api/events/Event;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/events/Event;->isAllDay()Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->after:Lcom/google/calendar/v2/client/service/api/events/Event;

    .line 45
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/Event;->getStartTime()Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->before:Lcom/google/calendar/v2/client/service/api/events/Event;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/events/Event;->getStartTime()Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->after:Lcom/google/calendar/v2/client/service/api/events/Event;

    .line 46
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/Event;->getStartTimeZone()Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    move-result-object v0

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->before:Lcom/google/calendar/v2/client/service/api/events/Event;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/events/Event;->getStartTimeZone()Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 43
    :goto_0
    return v0

    .line 46
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStructuredLocationChanges()Z
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->before:Lcom/google/calendar/v2/client/service/api/events/Event;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->after:Lcom/google/calendar/v2/client/service/api/events/Event;

    .line 79
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/Event;->getStructuredLocation()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->before:Lcom/google/calendar/v2/client/service/api/events/Event;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/events/Event;->getStructuredLocation()Ljava/util/List;

    move-result-object v1

    .line 78
    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTitleAnnotationsChanges()Z
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->before:Lcom/google/calendar/v2/client/service/api/events/Event;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->after:Lcom/google/calendar/v2/client/service/api/events/Event;

    .line 99
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/Event;->getTitleAnnotations()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->before:Lcom/google/calendar/v2/client/service/api/events/Event;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/events/Event;->getTitleAnnotations()Ljava/util/List;

    move-result-object v1

    .line 98
    invoke-static {v0, v1}, Lcom/google/calendar/v2/client/service/common/ObservableCollections;->equalContentLists(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTitleChanges()Z
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->before:Lcom/google/calendar/v2/client/service/api/events/Event;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->after:Lcom/google/calendar/v2/client/service/api/events/Event;

    .line 58
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/Event;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->before:Lcom/google/calendar/v2/client/service/api/events/Event;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/events/Event;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 57
    :goto_0
    return v0

    .line 58
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVisibilityChanges()Z
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->before:Lcom/google/calendar/v2/client/service/api/events/Event;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->after:Lcom/google/calendar/v2/client/service/api/events/Event;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/Event;->getVisibility()Lcom/google/calendar/v2/client/service/api/events/Visibility;

    move-result-object v0

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/EventEditDiff;->before:Lcom/google/calendar/v2/client/service/api/events/Event;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/events/Event;->getVisibility()Lcom/google/calendar/v2/client/service/api/events/Visibility;

    move-result-object v1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
