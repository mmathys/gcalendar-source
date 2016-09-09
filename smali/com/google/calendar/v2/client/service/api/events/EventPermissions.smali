.class public interface abstract Lcom/google/calendar/v2/client/service/api/events/EventPermissions;
.super Ljava/lang/Object;
.source "EventPermissions.java"


# virtual methods
.method public abstract allowedPrivacyTypes()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/PrivacyType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract canAddInvitationMessage()Z
.end method

.method public abstract canAddRelatedContact()Z
.end method

.method public abstract canChangeAttachments()Z
.end method

.method public abstract canChangeBackground()Z
.end method

.method public abstract canChangeCalendar()Z
.end method

.method public abstract canChangeColor()Z
.end method

.method public abstract canChangeDescription()Z
.end method

.method public abstract canChangeEndTimeZone()Z
.end method

.method public abstract canChangeGuestsCanInviteOthers()Z
.end method

.method public abstract canChangeGuestsCanModify()Z
.end method

.method public abstract canChangeHangout()Z
.end method

.method public abstract canChangeLocation()Z
.end method

.method public abstract canChangePrivacy()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract canChangeReminders()Z
.end method

.method public abstract canChangeStartTimeZone()Z
.end method

.method public abstract canChangeTime()Z
.end method

.method public abstract canChangeTitle()Z
.end method

.method public abstract canDelete()Z
.end method

.method public abstract canInvite()Z
.end method

.method public abstract canRemoveOwnCopy()Z
.end method

.method public abstract canRemoveRelatedContact()Z
.end method

.method public abstract canRespond()Z
.end method

.method public abstract canUninvite()Z
.end method

.method public abstract isEditable()Z
.end method
