.class Lcom/google/calendar/v2/client/service/impl/events/ProhibitiveEventPermissionsImpl;
.super Ljava/lang/Object;
.source "ProhibitiveEventPermissionsImpl.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/api/events/EventPermissions;


# static fields
.field public static final INSTANCE:Lcom/google/calendar/v2/client/service/impl/events/ProhibitiveEventPermissionsImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/calendar/v2/client/service/impl/events/ProhibitiveEventPermissionsImpl;

    invoke-direct {v0}, Lcom/google/calendar/v2/client/service/impl/events/ProhibitiveEventPermissionsImpl;-><init>()V

    sput-object v0, Lcom/google/calendar/v2/client/service/impl/events/ProhibitiveEventPermissionsImpl;->INSTANCE:Lcom/google/calendar/v2/client/service/impl/events/ProhibitiveEventPermissionsImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
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
    .line 114
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public canAddInvitationMessage()Z
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public canAddRelatedContact()Z
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public canChangeAttachments()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public canChangeBackground()Z
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public canChangeCalendar()Z
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public canChangeColor()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public canChangeDescription()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public canChangeEndTimeZone()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public canChangeGuestsCanInviteOthers()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public canChangeGuestsCanModify()Z
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public canChangeHangout()Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public canChangeLocation()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public canChangePrivacy()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public canChangeReminders()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public canChangeStartTimeZone()Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public canChangeTime()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public canChangeTitle()Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public canDelete()Z
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public canInvite()Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public canRemoveOwnCopy()Z
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public canRemoveRelatedContact()Z
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public canRespond()Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public canUninvite()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public isEditable()Z
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method
