.class public Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;
.super Ljava/lang/Object;
.source "EventPermissionsImpl.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/api/events/EventPermissions;


# static fields
.field private static final ALL_PRIVACY_TYPES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/PrivacyType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final event:Lcom/google/calendar/v2/client/service/impl/events/EventBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/google/calendar/v2/client/service/api/events/PrivacyType;->values()[Lcom/google/calendar/v2/client/service/api/events/PrivacyType;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    sput-object v0, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->ALL_PRIVACY_TYPES:Ljava/util/Collection;

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/google/calendar/v2/client/service/impl/events/EventBase;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->event:Lcom/google/calendar/v2/client/service/impl/events/EventBase;

    .line 30
    return-void
.end method

.method private canChangeBasicInfo()Z
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->isCalendarEditable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->event:Lcom/google/calendar/v2/client/service/impl/events/EventBase;

    .line 73
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/impl/events/EventBase;->isOrganizerCopy()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->userIsInvited()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->guestsCanModify()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 72
    :goto_0
    return v0

    .line 73
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private canChangeOwnViewDetails()Z
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->isCalendarEditable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->event:Lcom/google/calendar/v2/client/service/impl/events/EventBase;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/impl/events/EventBase;->isOrganizerCopy()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->userIsInvited()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private canRespondToEventType()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method private guestsCanModify()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method private isCalendarEditable()Z
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->event:Lcom/google/calendar/v2/client/service/impl/events/EventBase;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/impl/events/EventBase;->getCalendar()Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->event:Lcom/google/calendar/v2/client/service/impl/events/EventBase;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/impl/events/EventBase;->isUnsupportedRecurring()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNewEvent()Z
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->event:Lcom/google/calendar/v2/client/service/impl/events/EventBase;

    instance-of v0, v0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->event:Lcom/google/calendar/v2/client/service/impl/events/EventBase;

    check-cast v0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;

    .line 49
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->isNewEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 48
    :goto_0
    return v0

    .line 49
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private userHasWriteAccess()Z
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->isCalendarEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->event:Lcom/google/calendar/v2/client/service/impl/events/EventBase;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/impl/events/EventBase;->isOrganizerCopy()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private userIsInvited()Z
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->event:Lcom/google/calendar/v2/client/service/impl/events/EventBase;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/impl/events/EventBase;->getOwnResponse()Lcom/google/calendar/v2/client/service/api/events/Attendee;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public allowedPrivacyTypes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/PrivacyType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->canChangePrivacy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    sget-object v0, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->ALL_PRIVACY_TYPES:Ljava/util/Collection;

    .line 198
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public canAddInvitationMessage()Z
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->canInvite()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->event:Lcom/google/calendar/v2/client/service/impl/events/EventBase;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/impl/events/EventBase;->hasAttendeesBesidesSelf()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canAddRelatedContact()Z
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public canChangeAttachments()Z
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->canChangeBasicInfo()Z

    move-result v0

    return v0
.end method

.method public canChangeBackground()Z
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public canChangeCalendar()Z
    .locals 1

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->isNewEvent()Z

    move-result v0

    return v0
.end method

.method public canChangeColor()Z
    .locals 1

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->canChangeOwnViewDetails()Z

    move-result v0

    return v0
.end method

.method public canChangeDescription()Z
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->canChangeBasicInfo()Z

    move-result v0

    return v0
.end method

.method public canChangeEndTimeZone()Z
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->canChangeBasicInfo()Z

    move-result v0

    return v0
.end method

.method public canChangeGuestsCanInviteOthers()Z
    .locals 1

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->userHasWriteAccess()Z

    move-result v0

    return v0
.end method

.method public canChangeGuestsCanModify()Z
    .locals 2

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->userHasWriteAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->event:Lcom/google/calendar/v2/client/service/impl/events/EventBase;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/impl/events/EventBase;->getVisibility()Lcom/google/calendar/v2/client/service/api/events/Visibility;

    move-result-object v0

    sget-object v1, Lcom/google/calendar/v2/client/service/api/events/Visibility;->SECRET:Lcom/google/calendar/v2/client/service/api/events/Visibility;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canChangeHangout()Z
    .locals 1

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->canChangeBasicInfo()Z

    move-result v0

    return v0
.end method

.method public canChangeLocation()Z
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->canChangeBasicInfo()Z

    move-result v0

    return v0
.end method

.method public canChangePrivacy()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->canChangeOwnViewDetails()Z

    move-result v0

    return v0
.end method

.method public canChangeReminders()Z
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->canChangeOwnViewDetails()Z

    move-result v0

    return v0
.end method

.method public canChangeStartTimeZone()Z
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->canChangeBasicInfo()Z

    move-result v0

    return v0
.end method

.method public canChangeTime()Z
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->canChangeBasicInfo()Z

    move-result v0

    return v0
.end method

.method public canChangeTitle()Z
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->canChangeBasicInfo()Z

    move-result v0

    return v0
.end method

.method public canDelete()Z
    .locals 1

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->isNewEvent()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->isCalendarEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->event:Lcom/google/calendar/v2/client/service/impl/events/EventBase;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/impl/events/EventBase;->isOrganizerCopy()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canInvite()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 141
    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->isCalendarEditable()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->event:Lcom/google/calendar/v2/client/service/impl/events/EventBase;

    invoke-virtual {v2}, Lcom/google/calendar/v2/client/service/impl/events/EventBase;->hasOmittedAttendees()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 147
    :cond_1
    :goto_0
    return v0

    .line 144
    :cond_2
    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->event:Lcom/google/calendar/v2/client/service/impl/events/EventBase;

    invoke-virtual {v2}, Lcom/google/calendar/v2/client/service/impl/events/EventBase;->isOrganizerCopy()Z

    move-result v2

    if-nez v2, :cond_1

    .line 147
    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->userIsInvited()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->guestsCanModify()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->event:Lcom/google/calendar/v2/client/service/impl/events/EventBase;

    invoke-virtual {v2}, Lcom/google/calendar/v2/client/service/impl/events/EventBase;->guestsCanInviteOthers()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public canRemoveOwnCopy()Z
    .locals 1

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->isNewEvent()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->isCalendarEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->userIsInvited()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->event:Lcom/google/calendar/v2/client/service/impl/events/EventBase;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/impl/events/EventBase;->isOrganizerCopy()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canRemoveRelatedContact()Z
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public canRespond()Z
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->isCalendarEditable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->userIsInvited()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->event:Lcom/google/calendar/v2/client/service/impl/events/EventBase;

    .line 133
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/impl/events/EventBase;->isOrganizerCopy()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->event:Lcom/google/calendar/v2/client/service/impl/events/EventBase;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/impl/events/EventBase;->hasAttendeesBesidesSelf()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->event:Lcom/google/calendar/v2/client/service/impl/events/EventBase;

    .line 134
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/impl/events/EventBase;->isOrganizerCopy()Z

    move-result v0

    if-nez v0, :cond_2

    .line 136
    :cond_1
    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->canRespondToEventType()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 131
    :goto_0
    return v0

    .line 136
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canUninvite()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 152
    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->isCalendarEditable()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->event:Lcom/google/calendar/v2/client/service/impl/events/EventBase;

    invoke-virtual {v2}, Lcom/google/calendar/v2/client/service/impl/events/EventBase;->hasOmittedAttendees()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 158
    :cond_1
    :goto_0
    return v0

    .line 155
    :cond_2
    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->event:Lcom/google/calendar/v2/client/service/impl/events/EventBase;

    invoke-virtual {v2}, Lcom/google/calendar/v2/client/service/impl/events/EventBase;->isOrganizerCopy()Z

    move-result v2

    if-nez v2, :cond_1

    .line 158
    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->userIsInvited()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->guestsCanModify()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public isEditable()Z
    .locals 1

    .prologue
    .line 230
    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->canChangeOwnViewDetails()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 245
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "canChangeBasicInfo"

    .line 246
    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->canChangeBasicInfo()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "canChangeReminders"

    .line 247
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->canChangeReminders()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "canRespond"

    .line 248
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->canRespond()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "canChangeCalendar"

    .line 249
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->canChangeCalendar()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "canChangePrivacy"

    .line 250
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->canChangePrivacy()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "canUninvite"

    .line 251
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->canUninvite()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "canInvite"

    .line 252
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->canInvite()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "canDelete"

    .line 253
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;->canDelete()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    return-object v0
.end method
